# -*- encoding: utf-8 -*-
require File.expand_path('../lib/mongoid/big_decimal_integer/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Guilherme Cirne"]
  gem.email         = ["gcirne@gmail.com"]
  gem.description   = %q{The default BigDecimal type provided in Mongoid stores BigDecimals as Strings. Because of this, stuff like sorts and range queries don't work. This type multiplies the value by a (configurable) power of 10 and stores the resulting Integer.}
  gem.summary       = %q{Mongoid type which stores BigDecimals as Integers.}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "mongoid_big_decimal_integer"
  gem.require_paths = ["lib"]
  gem.version       = Mongoid::BigDecimalInteger::VERSION

  gem.add_development_dependency "rspec"
end
