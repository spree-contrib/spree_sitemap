Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_sitemap'
  s.version     = '2.0.1.beta'
  s.summary     = 'Provides a sitemap file for Spree'
  s.description = s.summary
  s.required_ruby_version = '>= 1.9.3'

  s.author            = 'Jeff Dutil'
  s.email             = 'jdutil@burlingtonwebapps.com'
  s.homepage          = 'https://github.com/jdutil/spree_sitemap'

  s.files        = `git ls-files`.split("\n")
  s.test_files   = `git ls-files -- spec/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_runtime_dependency 'spree_core', '~> 2.2.0'
  s.add_runtime_dependency 'sitemap_generator', '~> 4.3.1'

  s.add_development_dependency 'database_cleaner', '~> 1.2.0'
  s.add_development_dependency 'factory_girl', '~> 4.4'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rspec-rails', '~> 2.14.0'
  s.add_development_dependency 'sqlite3', '~> 1.3.8'
  s.add_development_dependency 'simplecov', '~> 0.7.1'
  s.add_development_dependency 'guard-rspec'
  s.add_development_dependency 'pry-rails'
end
