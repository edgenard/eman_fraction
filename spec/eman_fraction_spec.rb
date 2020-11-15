require 'spec_helper'
require_relative '../lib/eman_fraction'

RSpec.describe Fraction do

  describe '+' do
    it 'adds integers' do
      four = Fraction.new(4)
      nine = Fraction.new(9)

      expect(four + nine).to eq 13
    end

    it 'adds simple fractions' do
      one_fifth = Fraction.new(1, 5)
      two_fifths = Fraction.new(2, 5)
      three_fifths = Fraction.new(3, 5)

      expect(one_fifth + two_fifths).to eq three_fifths
    end

    it 'adds integers and fractions' do
      four_thirds = Fraction.new(4,3)
      nineteen_thirds = Fraction.new(19, 3)

      expect(5 + four_thirds).to eq nineteen_thirds
    end

    it 'returns the fraction in the lowest terms' do
      one_sixth = Fraction.new(1,6)
      one_third = Fraction.new(1,3)

      expect(one_sixth + one_sixth).to eq one_third
    end

    it 'does complex addition' do
      five_ninths = Fraction.new(5, 9)
      five_twefths = Fraction.new(5,12)
      thirty_fifth_thirty_sixths = Fraction.new(35,36)

      expect(five_ninths + five_twefths).to eq thirty_fifth_thirty_sixths
    end
  end

  describe '==' do
    it 'fractions with the same value are equal' do
      expect(Fraction.new(1,3)).to eq Fraction.new(1,3)
    end

    it 'fractions with different values are equal' do
      expect(Fraction.new(1, 4)).not_to eq Fraction.new(1, 5)
    end
  end
end
