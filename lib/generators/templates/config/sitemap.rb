SitemapGenerator::Sitemap.default_host = "http://#{Spree::Store.default.url}"

##
## If using Heroku or similar service where you want sitemaps to live in S3 you'll need to setup these settings.
##

## Pick a place safe to write the files
# SitemapGenerator::Sitemap.public_path = 'tmp/'

## Store on S3 using Fog - Note must add fog to your Gemfile.
# SitemapGenerator::Sitemap.adapter = SitemapGenerator::S3Adapter.new({aws_access_key_id:     Spree::Config[:s3_access_key],
#                                                                     aws_secret_access_key: Spree::Config[:s3_secret],
#                                                                     fog_provider:          'AWS',
#                                                                     fog_directory: Spree::Config[:s3_bucket]})

## Inform the map cross-linking where to find the other maps.
# SitemapGenerator::Sitemap.sitemaps_host = "http://#{Spree::Config[:s3_bucket]}.s3.amazonaws.com/"

## Pick a namespace within your bucket to organize your maps. Note you'll need to set this directory to be public.
# SitemapGenerator::Sitemap.sitemaps_path = 'sitemaps/'

SitemapGenerator::Sitemap.add_links do
  # Put links creation logic here.
  #
  # The root path '/' and sitemap index file are added automatically.
  # Links are added to the Sitemap in the order they are specified.
  #
  # Usage: add(path, options={})
  #        (default options are used if you don't specify)
  #
  # Defaults: :priority => 0.5, :changefreq => 'weekly',
  #           :lastmod => Time.now, :host => default_host
  #
  #
  # Examples:
  #
  # Add '/articles'
  #
  #   add articles_path, :priority => 0.7, :changefreq => 'daily'
  #
  # Add individual articles:
  #
  #   Article.find_each do |article|
  #     add article_path(article), :lastmod => article.updated_at
  #   end
  add_login
  add_signup
  add_account
  add_password_reset
  add_taxons
  add_products
end
