module SpreeSitemapGenerator
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../../templates", __FILE__)

      desc "Configures your Rails application for use with spree_sitemap_generator"
      def copy_config
        directory "config"
      end

    end
  end
end
