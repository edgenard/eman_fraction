require 'spec_helper'
require_relative '../lib/eman_fraction'

RSpec.describe Fraction do

  describe '+' do
    it 'adds zeros' do
      zero = Fraction.new(0)
      expect(zero + zero).to eq 0
    end
  end
end
