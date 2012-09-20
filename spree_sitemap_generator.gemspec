Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_sitemap_generator'
  s.version     = '3.0.3'
  s.summary     = 'Provides a sitemap file for Spree'
  #s.description = 'Add (optional) gem description here'
  s.required_ruby_version = '>= 1.8.7'

  s.author            = ['Joshua Nussbaum', 'Jeff Dutil']
  s.email             = ['joshnuss@gmail.com', 'jdutil@burlingtonwebapps.com']
  # s.homepage          = 'http://www.rubyonrails.org'
  # s.rubyforge_project = 'actionmailer'

  s.files        = Dir['CHANGELOG', 'README.md', 'LICENSE', 'lib/**/*', 'app/**/*']
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency('spree_core', '>= 1.0.0')
  s.add_dependency('sitemap_generator', '~> 3.1.0')

  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'rspec-rails', '= 2.6.1'
  s.add_development_dependency 'factory_girl'
  s.add_development_dependency 'faker'
end
