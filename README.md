# Mongoid::BigDecimalInteger

Mongoid type which stores BigDecimals as Integers.

The default BigDecimal type provided in Mongoid stores BigDecimals as Strings. Because of this, stuff like sorts and range queries don't work. This type multiplies the value by a (configurable) power of 10 and stores the resulting Integer.

## Installation

Add this line to your application's Gemfile:

    gem 'mongoid_big_decimal_integer'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mongoid_big_decimal_integer

## Usage

TODO: Write usage instructions here

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
