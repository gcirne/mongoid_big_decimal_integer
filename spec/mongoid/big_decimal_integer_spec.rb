require "spec_helper"

describe Mongoid::BigDecimalInteger do
  before(:each) do
    Mongoid::BigDecimalInteger.decimal_places = Mongoid::BigDecimalInteger::DEFAULT_DECIMAL_PLACES
  end

  describe ".demongoize" do
    specify { Mongoid::BigDecimalInteger.demongoize(1234).should == BigDecimal.new("12.34") }

    context "with custom decimal places" do
      before(:each) { Mongoid::BigDecimalInteger.decimal_places = 12 }
      specify { Mongoid::BigDecimalInteger.demongoize(12345678901234).should == BigDecimal.new("12.345678901234") }      
    end
  end

  describe ".mongoize" do
    context "when value is an Integer" do
      let(:value) { 1234 }
      specify { Mongoid::BigDecimalInteger.mongoize(value).should == 123400 }
    end

    context "when value is a Float" do
      let(:value) { 12.34 }
      specify { Mongoid::BigDecimalInteger.mongoize(value).should == 1234 }
    end

    context "when value is a BigDecimal" do
      let(:value) { BigDecimal.new("1234") }
      specify { Mongoid::BigDecimalInteger.mongoize(value).should == 123400 }
    end

    context "when value is a String" do
      let(:value) { "1234" }
      specify { Mongoid::BigDecimalInteger.mongoize(value).should == 123400 }
    end

    context "with custom decimal places" do
      before(:each) { Mongoid::BigDecimalInteger.decimal_places = 12 }
      specify { Mongoid::BigDecimalInteger.mongoize(12.345678901234).should == 12345678901234 }      
    end

    it "should round the value before converting" do
      Mongoid::BigDecimalInteger.mongoize(1234.567).should == 123457
    end
  end
end
