require 'spec_helper'
require_relative '../lib/eman_fraction'

RSpec.describe Fraction do

  describe '+' do
    it 'zero plus zero equals zero' do
      sum = Fraction.new(0) + Fraction.new(0)

      expect(sum.numerator).to eq(Fraction.new(0).numerator)
    end

    it 'zero plus three equals three' do
      sum = Fraction.new(0) + Fraction.new(3)

      expect(sum.numerator).to eq(Fraction.new(3).numerator)
    end

    it 'simple fractions with the same denominator' do
      sum = Fraction.new(1,7) + Fraction.new(3,7)
      expected_sum = Fraction.new(4,7)
      expect(sum.numerator).to eq(expected_sum.numerator)
      expect(sum.denominator).to eq(expected_sum.denominator)
    end

    it 'fractions with different denominators where the first denominator is smaller' do
      sum = Fraction.new(1,2) + Fraction.new(1,4)
      expected_sum = Fraction.new(3,4)

      expect(sum.numerator).to eq(expected_sum.numerator)
      expect(sum.denominator).to eq(expected_sum.denominator)
    end

    it 'fractions with different denominators where the first denominator is larger' do
      sum = Fraction.new(5,6) + Fraction.new(1,3)
      expected_sum = Fraction.new(7,6)

      expect(sum.numerator).to eq(expected_sum.numerator)
      expect(sum.denominator).to eq(expected_sum.denominator)
    end
  end

end
