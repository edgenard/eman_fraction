require 'spec_helper'
require_relative '../lib/eman_fraction'

RSpec.describe Fraction do

  describe '+' do
    it 'adds zeros' do
      zero = Fraction.new(0)
      expect(zero + zero).to eq 0
    end

    it 'adds zero to integers' do
      zero = Fraction.new(0)
      one = Fraction.new(1)

      expect(one + zero).to eq 1
    end
  end
end
