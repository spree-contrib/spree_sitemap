RSpec.describe SpreeSitemap::SpreeDefaults do
  before do
    @interpreter = SitemapGenerator::Interpreter.send :include, SpreeSitemap::SpreeDefaults
  end

  subject { @interpreter.new }

  context 'Interpreter' do
    %w( add_login
        add_signup
        add_account
        add_password_reset
        add_products
        add_product
        add_pages
        add_taxons
        add_taxons ).each do |method|
      it "inherit included method #{method.to_sym}" do
        expect(subject.respond_to?(method.to_sym)).to be(true)
      end
    end
  end

  context '.default_url_options' do
    it 'returns a hash' do
      expect(subject.default_url_options).to be_a Hash
    end
  end

  context '.gem_available?' do
    it 'verifies that gem is available' do
      expect(subject.gem_available?('rspec-rails')).to be_truthy
    end

    context 'when there is no such gem' do
      it 'returns false' do
        expect(subject.gem_available?('fake_spree_gem_name')).to be false
      end
    end
  end

  describe '.main_app' do
    context 'returns the url helpers module for the application' do
      it { expect(subject.main_app).to respond_to(:url_for, :spree_path, :_routes) }
    end
  end

  skip '.add_login(options = {})'
  skip '.add_signup(options = {})'
  skip '.add_account(options = {})'
  skip '.add_password_reset(options = {})'
  skip '.add_products(options = {})'
  skip '.add_product(product, options = {})'
  skip '.add_pages(options = {})'
  skip '.add_taxons(options = {})'
  skip '.add_taxon(taxon, options = {})'
end
