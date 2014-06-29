module SpreeSitemap::SpreeDefaults
  def default_url_options
    {:host => SitemapGenerator::Sitemap.default_host}
  end
  include Spree::Core::Engine.routes.url_helpers
  include Spree::BaseHelper # for gem_available? + meta_data

  def add_login(options={})
    add(login_path, options)
  end

  def add_signup(options={})
    add(signup_path, options)
  end

  def add_account(options={})
    add(account_path, options)
  end

  def add_password_reset(options={})
    add(new_spree_user_password_path, options)
  end

  def add_products(options={})
    active_products = Spree::Product.active

    add(products_path, options.merge(:lastmod => active_products.last_updated))
    active_products.each do |product|
      add(product_path(product), options.merge(:lastmod => product.updated_at))
    end
  end

  def add_pages(options={})
    # TODO this should be refactored to add_pages & add_page

    Spree::Page.active.each do |page|
      add(page.path, options.merge(:lastmod => page.updated_at))
    end if gem_available? 'spree_essential_cms'

    Spree::Page.visible.each do |page|
      add(page.slug, options.merge(:lastmod => page.updated_at))
    end if gem_available? 'spree_static_content'
  end

  def add_taxons(options={})
    Spree::Taxon.roots.each {|taxon| add_taxon(taxon, options) }
  end

  def add_taxon(taxon, options={})
    add(nested_taxons_path(taxon.permalink), options.merge(:lastmod => taxon.products.last_updated))
    taxon.children.each {|child| add_taxon(child, options) }
  end
end
