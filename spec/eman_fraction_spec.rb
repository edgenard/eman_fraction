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
  end
end
