Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_sitemap'
  s.version     = '2.0.0.beta'
  s.summary     = 'Provides a sitemap file for Spree'
  s.description = 'Provides a sitemap file for Spree'
  s.required_ruby_version = '>= 1.9.3'

  s.author            = 'Jeff Dutil'
  s.email             = 'jdutil@burlingtonwebapps.com'
  s.homepage          = 'https://github.com/jdutil/spree_sitemap'

  s.files        = `git ls-files`.split("\n")
  s.test_files   = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '>= 1.0.0'
  s.add_dependency 'sitemap_generator', '~> 4.2.0'

  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'factory_girl'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rspec-rails', '~> 2.13'
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'simplecov'
end
