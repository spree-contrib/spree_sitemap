require 'spree_core'
require 'spree_sitemap_generator_hooks'
require 'sitemap_generator'

module SpreeSitemapGenerator
  class Engine < Rails::Engine

    config.autoload_paths += %W(#{config.root}/lib)

    def self.activate

      ActiveRecord::Relation.class_eval do
        def last_updated
          last_update = order('updated_at DESC').first
          last_update.try(:updated_at) 
        end 
      end

      ActiveRecord::Base.class_eval do
        def self.last_updated
          scoped.last_updated
        end
      end

      SitemapGenerator::Sitemap.default_host = "http://#{Spree::Config[:site_url]}"

      require 'spree_sitemap_generator/spree_defaults'
      SitemapGenerator::Interpreter.send :include, SpreeSitemapGenerator::SpreeDefaults

      Dir.glob(File.join(File.dirname(__FILE__), "../app/**/*_decorator*.rb")) do |c|
        Rails.env.production? ? require(c) : load(c)
      end
    end

    config.to_prepare &method(:activate).to_proc
  end
end
