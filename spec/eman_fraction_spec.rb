require 'spec_helper'
require_relative '../lib/eman_fraction'

RSpec.describe Fraction do

  describe '+' do
    it 'zero plus zero equals zero' do
      zero = Fraction.new(0)
      expect(zero + zero).to eq(Fraction.new(0).number)
    end

    it 'zero plus three equals three' do
      zero = Fraction.new(0)
      three = Fraction.new(3)

      expect(zero + three).to eq(Fraction.new(3).number)
    end

  end

end
