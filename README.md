[![Build Status](https://travis-ci.org/nebulab/solidus_page_objects.svg?branch=master)](https://travis-ci.org/nebulab/solidus_page_objects)

SolidusPageObjects
==================

Introduction goes here.

Installation
------------

Add `solidus_page_objects` to *both* the `:development` and `:test` groups in
the `Gemfile`:

```ruby
group :development, :test do
  gem 'solidus_page_objects'
end
```

Bundle your dependencies:

```shell
bundle
```

Use
-------

In your `features` specs write something like:

```
...
  let(:home_page) { Solidus::PageObjects::Pages::Home.new }

  before do
    home_page.load
  end

  scenario 'a search term is entered' do
    search_results = home_page.top_navigation.search.search_for('Hug')
    expect(search_results.product_list.products.size).to eq(1)
  end
...
```

## License

SolidusPageObjects is copyright © 2016 [Nebulab](http://nebulab.it/). It is free software, and may be redistributed under the terms specified in the [license].

## About

![Nebulab](http://nebulab.it/assets/images/public/logo.svg)

SolidusPageObjects is funded and maintained by the [Nebulab](http://nebulab.it/) team.

We firmly believe in the power of open-source. [Contact us](http://nebulab.it/contact-us/) if you like our work and you need help with your project design or development.

[license]: MIT-LICENSE
