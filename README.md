Spree Sitemap Generator
=====================

Spree sitemap generator is a sitemap generator based on the sitemap_generator gem [http://github.com/kjvarga/sitemap_generator]. It adheres to the Sitemap 0.9 protocol specification.

Installation
=======

1) add the gem to your `Gemfile`:

`gem 'spree_sitemap_generator'`

2) run bundler:

`bundle install`

3) add sitemap to your `.gitignore`

  `echo "public/sitemap*" >> .gitignore`

4) BOOM you're done!

Features
=====
- Notifies search engine of new sitemaps (Google, Yahoo, Ask, Bing)
- Compresses sitemaps with gzip
- Provides basic sitemap of a Spree site
- Allows you to easily add additional sitemaps for pages you add to your site

Special Thanks
=====
- The creators of the rails sitemap gem
- To all who have provided pull requests, its is much appreciated


Copyright (c) 2011 Joshua Nussbaum, released under the New BSD License
