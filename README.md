# Mongoid::BigDecimalInteger [![Build Status](https://secure.travis-ci.org/gcirne/mongoid_big_decimal_integer.png?branch=master)](https://travis-ci.org/gcirne/mongoid_big_decimal_integer)

Mongoid type which stores BigDecimals as Integers.

The default BigDecimal type provided in Mongoid stores BigDecimals as Strings. Because of this, stuff like sorts and range queries don't work. This type multiplies the value by a (configurable) power of 10 and stores the resulting Integer.

## Installation

Add this line to your application's Gemfile:

    gem 'mongoid_big_decimal_integer'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mongoid_big_decimal_integer

## Configuration

By default, `Mongoid::BigDecimalInteger` uses 2 decimal places (which means that a value is multiplied by 10^2 before being stored). You can change this by calling:

	Mongoid::BigDecimalInteger.decimal_places = 12

## Usage

	field :my_field, type: Mongoid::BigDecimalInteger

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
