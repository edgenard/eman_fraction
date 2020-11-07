require 'spec_helper'
require_relative '../lib/eman_fraction'

RSpec.describe Fraction do

  describe '+' do
    it 'adds proper and improper fractions' do
      four_fifths = Fraction.new(numerator: 4, denominator: 5)
      seven_thirds = Fraction.new(numerator: 7, denominator: 3)

      expect(four_fifths + seven_thirds).to eq Fraction.new(numerator: 47, denominator: 15)
    end

    it 'adds two proper fractions' do
      two_thirds = Fraction.new(numerator: 2, denominator: 3)
      three_fourths = Fraction.new(numerator: 3, denominator: 4)

      expect(two_thirds + three_fourths).to eq Fraction.new(numerator: 17, denominator: 12)
    end

    it 'works with integers' do
      five_sevenths = Fraction.new(numerator: 5, denominator: 7)

      expect(5 + five_sevenths).to eq Fraction.new(numerator: 40, denominator: 7)
    end

    it 'represents fractions in the lowest terms' do
      one_third = Fraction.new(numerator: 1, denominator: 3)

      expect(one_third + one_third).to eq Fraction.new(numerator: 2, denominator: 3)
    end

    it 'handles zeros' do
      zero = Fraction.new(numerator: 0, denominator: 0)

      expect(zero + 0).to eq Fraction.new(numerator: 0, denominator: 0)
    end
  end
end