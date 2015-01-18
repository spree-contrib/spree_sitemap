Spree Sitemap
=============

[![Build Status](https://travis-ci.org/JDutil/spree_sitemap.png?branch=master)](https://travis-ci.org/JDutil/spree_sitemap)
[![Code Climate](https://codeclimate.com/github/jdutil/spree_sitemap.png)](https://codeclimate.com/github/jdutil/spree_sitemap)

Spree Sitemap is a sitemap generator based on the [sitemap_generator][1] gem. It adheres to the Sitemap 0.9 protocol specification.

Features
--------

- Notifies search engine of new sitemaps (Google, Yahoo, Ask, Bing)
- Supports large huge product catalogs
- Adheres to 0.9 Sitemap protocol specification
- Compresses sitemaps with gzip
- Provides basic sitemap of a Spree site (products, taxons, login page, signup page)
- Easily add additional sitemaps for pages you add to your spree site
- Supports Amazon S3 and other hosting services
- Thin wrapper over battle tested sitemap generator

Configuration Options
---------------------

Check out the [README][1] for the [sitemap_generator][1].

Installation
------------

1) add the gem to your `Gemfile`:
```ruby
gem 'spree_sitemap', github: 'spree-contrib/spree_sitemap', branch: 'master'
```

2) run bundler:

`bundle install`

3) run the installer, it will create a `config/sitemap.rb` file with some sane defaults

`rails g spree_sitemap:install`

4) add sitemap to your `.gitignore`

`echo "public/sitemap*" >> .gitignore`

5) setup a daily cron job to regenrate your sitemap via the `rake sitemap:refresh` task. If you use the Whenever gem, add this to your `config/schedule.rb`
```ruby
every 1.day, at: '5:00 am' do
  rake '-s sitemap:refresh'
end
```

6) make sure crawlers can find the sitemap, by adding the following line to your `public/robots.txt` with your correct domain name

`echo "Sitemap: http://www.example.com/sitemap.xml.gz" >> public/robots.txt`

TODO
----

- Add spec for sitemap rake task

Thanks
------

- [The creators & contributors of sitemap_generator](http://github.com/kjvarga/sitemap_generator/contributors)
- [Joshua Nussbaum's original implementation of spree-sitemap-generator](https://github.com/joshnuss/spree-sitemap-generator)

Contributing
------------

In the spirit of [free software][2], **everyone** is encouraged to help improve this project.

Here are some ways *you* can contribute:

* by using prerelease versions
* by reporting [bugs][3]
* by suggesting new features
* by writing or editing documentation
* by writing specifications
* by writing code (*no patch is too small*: fix typos, add comments, clean up inconsistent whitespace)
* by refactoring code
* by resolving [issues][3]
* by reviewing patches

Donating
--------

Bitcoin donations may be sent to: 18HEAFjeDaa15AihyGvKvR19XEkm5aCJk5

Copyright (c) 2014 [Jeff Dutil][5] and [contributors][6], released under the [New BSD License][4].

[1]: http://github.com/kjvarga/sitemap_generator
[2]: http://www.fsf.org/licensing/essays/free-sw.html
[3]: https://github.com/jdutil/spree_sitemap/issues
[4]: https://github.com/jdutil/spree_sitemap/blob/master/LICENSE.md
[5]: https://github.com/jdutil
[6]: https://github.com/jdutil/spree_sitemap/graphs/contributors
