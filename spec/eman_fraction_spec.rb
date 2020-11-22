require 'spec_helper'
require_relative '../lib/eman_fraction'

RSpec.describe Fraction do
  describe '.new' do
    it 'properly signs fractions' do
      expect(Fraction.new(1, -3)).to eq(Fraction.new(-1, 3))
    end

    it 'turns floats into fractions' do
      expect(Fraction.new(1.5)).to eq(Fraction.new(3,2))
    end
  end
  describe '+' do
    it 'zero plus zero equals zero' do
      sum = Fraction.new(0) + Fraction.new(0)

      expect(sum).to eq(Fraction.new(0))
    end

    it 'zero plus three equals three' do
      sum = Fraction.new(0) + Fraction.new(3)

      expect(sum).to eq(Fraction.new(3))
    end

    it 'simple fractions with the same denominator' do
      sum = Fraction.new(1,7) + Fraction.new(3,7)

      expect(sum).to eq(Fraction.new(4, 7))
    end

    it 'fractions with different denominators where the first denominator is smaller' do
      sum = Fraction.new(1,2) + Fraction.new(1,4)

      expect(sum).to eq(Fraction.new(3,4))
    end

    it 'fractions with different denominators where the first denominator is larger' do
      sum = Fraction.new(5,6) + Fraction.new(1,3)

      expect(sum).to eq(Fraction.new(7,6))
    end

    it 'reduces fractions to lowest terms' do
      sum = Fraction.new(2,4) + Fraction.new(0)

      expect(sum).to eq(Fraction.new(1, 2))
    end

    it 'fractions where neither denominator is a multiple of the other' do
      sum = Fraction.new(1,4) + Fraction.new(5,6)

      expect(sum).to eq(Fraction.new(13,12))
    end

    it 'can be compared to a whole number' do
      sum = Fraction.new(1, 2) + Fraction.new(1, 2)

      expect(sum).to eq(1)
    end

    it 'can be added to a whole number' do
      sum = 5 + Fraction.new(3, 7)

      expect(sum).to eq(Fraction.new(38, 7))
    end

    it 'can add negative fractions' do
      sum = Fraction.new(-5, 8) + Fraction.new(1, -3)
      expect(sum).to eq(Fraction.new(-23, 24))
    end
  end
end
