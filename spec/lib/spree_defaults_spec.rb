require 'spec_helper'

describe SpreeSitemap::SpreeDefaults do

  #include Spree::Core::Engine.routes.url_helpers

  context 'default_url_options' do
    # stub SitemapGenerator::Sitemap.default_host
    #{:host => SitemapGenerator::Sitemap.default_host}
    specify do
      pending 'write some tests'
    end
  end

  context 'add_login' do
    #add(login_path, options)
    specify do
      pending 'write some tests'
    end
  end

  context 'add_signup' do
    #add(signup_path, options)
    specify do
      pending 'write some tests'
    end
  end

  context 'add_account' do
    #add(account_path, options)
    specify do
      pending 'write some tests'
    end
  end

  context 'add_password_reset' do
    #add(new_spree_user_password_path, options)
    specify do
      pending 'write some tests'
    end
  end

  context 'add_products' do
    # active_products = Spree::Product.active

    # add(products_path, options.merge(:lastmod => active_products.last_updated))
    # active_products.each do |product|
    #   add(product_path(product), options.merge(:lastmod => product.updated_at))
    # end
    specify do
      pending 'write some tests'
    end
  end

  context 'add_taxons' do
    #Spree::Taxon.roots.each {|taxon| add_taxon(taxon, options) }
    specify do
      pending 'write some tests'
    end
  end

  context 'add_taxon' do
    # add(nested_taxons_path(taxon.slug), options.merge(:lastmod => taxon.products.last_updated))
    # taxon.children.each {|child| add_taxon(child, options) }
    specify do
      pending 'write some tests'
    end
  end
end