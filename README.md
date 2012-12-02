# Flexi Generators

Rails generators scripts for scaffolding and layout files containing Twitter’s Bootstrap CSS.

## Installation

Add this line to your application's Gemfile:

    gem 'flexi_generators'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install flexi_generators

## Quickstart

You can run following generators to get started.

Install (requires directives to Asset pipeline)

Usage:

    $ rails g flexi:install

Config (My extra configuration files: field error, pagination, locale and inflector)

Usage:

    $ rails g flexi:config

Layout (generates Twitter Bootstrap compatible layout)

Usage:

    $ rails g flexi:layout

Example:

    $ rails g flexi:layout application fixed

Scaffold (generates Twitter Bootstrap compatible scaffold views)

Usage:

    $ rails g flexi:scaffold NAME [field[:type][:index] field[:type][:index]] [options]

Example:

    $ rails g flexi:scaffold Post title description:text
    rake db:migrate

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Autor

Leandro de Oliveira

Blog: [http://leandroo.com.br](http://leandroo.com.br)

Github: [http://github.com/leandroo](http://github.com/leandroo)

Copyright (c) 2012 Leandro de Oliveira, released under the MIT license
