# -*- encoding: utf-8 -*-
require File.expand_path('../lib/mongoid/big_decimal_integer/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Guilherme Cirne"]
  gem.email         = ["gcirne@gmail.com"]
  gem.description   = %q{Mongoid type which stores BigDecimals as Integers.}
  gem.summary       = %q{Mongoid type which stores BigDecimals as Integers.}
  gem.homepage      = "https://github.com/gcirne/mongoid_big_decimal_integer"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "mongoid_big_decimal_integer"
  gem.require_paths = ["lib"]
  gem.version       = Mongoid::BigDecimalInteger::VERSION

  gem.add_development_dependency "rspec"
end
