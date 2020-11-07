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

      expect(five_sevenths + 5).to eq Fraction.new(numerator: 40, denominator: 7)
    end

    it 'represents fractions in the lowest terms' do
      five_ninths = Fraction.new(numerator: 5, denominator: 9)
      eleven_twefths = Fraction.new(numerator: 11, denominator: 12)

      expect(five_ninths + eleven_twefths).to eq Fraction.new(numerator: 53, denominator: 36)
    end

    it 'can add zeros' do
      zero = Fraction.new(numerator: 0, denominator: 0)

      expect(zero + 0).to eq(0)
    end

    it 'can add zeros to fractions' do
      one_third = Fraction.new(numerator: 1, denominator: 3)

      expect(one_third + 0).to eq Fraction.new(numerator: 1, denominator: 3)
    end

    it 'returns whole numbers as integers' do
      one_half = Fraction.new(numerator: 5, denominator: 10)

      expect(one_half + one_half).to eq(1)
    end
  end

  describe '-' do
    it 'does simple subtraction' do
      one_third = Fraction.new(numerator: 1, denominator: 3)
      two_thirds = Fraction.new(numerator: 2, denominator: 3)

      expect(two_thirds - one_third).to eq Fraction.new(numerator: 1, denominator: 3)
    end

    it 'subtracts fractions with different denominators' do
      five_sevenths = Fraction.new(numerator: 5, denominator: 7)
      one_third = Fraction.new(numerator: 1, denominator: 3)

      expect(five_sevenths - one_third).to eq Fraction.new(numerator: 8, denominator: 21)
    end

    it 'subtract fractions that result in negative values' do
      five_sevenths = Fraction.new(numerator: 5, denominator: 7)
      one_third = Fraction.new(numerator: 1, denominator: 3)

      expect(one_third - five_sevenths).to eq Fraction.new(numerator: -8, denominator: 21)
    end

    it 'subtracting the same fraction results in zero' do
      one_third = Fraction.new(numerator: 1, denominator: 3)

      expect(one_third - one_third).to eq 0
    end

    it 'returns the fraction when subtracting zero' do
      one_third = Fraction.new(numerator: 1, denominator: 3)

      expect(one_third - 0).to eq Fraction.new(numerator: 1, denominator: 3)
    end

    it 'negates the fraction when subtracting from zero' do
      one_third = Fraction.new(numerator: 1, denominator: 3)

      expect(0 - one_third).to eq Fraction.new(numerator: -1, denominator: 3)
    end

    it 'subtracts from integers' do
      one_third = Fraction.new(numerator: 1, denominator: 3)

      expect(5 - one_third).to eq Fraction.new(numerator: 14, denominator: 3)
    end
  end
end
