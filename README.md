# SkuGenerator

It takes the advantage of models and its associations to make it decodable unique over the application.

## Installation

Add this line to your application's Gemfile:

    gem 'sku_generator'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sku_generator

## Usage

generator :description, :parents => [:category] #  it will generate like PROD00100234

generator :description, :parents => [:category], :sku_initial => 'AWSST' # it will generate like AWSST00100234

Checkout the code documentation for more details

## Contributing

1. Fork it ( https://github.com/pavanagrawal/sku_generator/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

This tool will generate sku (stock keeping unit) for e-commerce application
