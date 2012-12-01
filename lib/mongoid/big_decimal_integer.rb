module Mongoid
  class BigDecimalInteger
    
    DEFAULT_DECIMAL_PLACES = 2

    @@decimal_places = DEFAULT_DECIMAL_PLACES

    def self.decimal_places=(decimal_places)
      @@decimal_places = decimal_places
    end

    def self.demongoize(value)
      BigDecimal.new(value.to_s) / (10 ** @@decimal_places)
    end

    def self.mongoize(value)
      big_decimal_value = value.is_a?(BigDecimal) ? value : BigDecimal.new(value.to_s)
      (big_decimal_value.round(@@decimal_places) * (10 ** @@decimal_places)).to_i
    end

  end
end
