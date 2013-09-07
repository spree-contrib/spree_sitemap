module SpreeSitemap
  class Engine < Rails::Engine
    engine_name 'spree_sitemap'

    config.autoload_paths += %W(#{config.root}/lib)

    # use rspec for tests
    config.generators do |g|
      g.test_framework :rspec
    end

    def self.activate
      Spree::Product.class_eval do
        def self.last_updated
          last_update = scoped.order('spree_products.updated_at DESC').first
          last_update.try(:updated_at)
        end
      end

      require 'spree_sitemap/spree_defaults'
      SitemapGenerator::Interpreter.send :include, SpreeSitemap::SpreeDefaults
      if defined? SitemapGenerator::LinkSet
        SitemapGenerator::LinkSet.send :include, SpreeSitemap::SpreeDefaults
      end

      Dir.glob(File.join(File.dirname(__FILE__), "../../app/**/*_decorator*.rb")) do |c|
        Rails.application.config.cache_classes ? require(c) : load(c)
      end

      Dir.glob(File.join(File.dirname(__FILE__), "../../app/overrides/*.rb")) do |c|
        Rails.application.config.cache_classes ? require(c) : load(c)
      end
    end

    config.to_prepare &method(:activate).to_proc
  end
end
