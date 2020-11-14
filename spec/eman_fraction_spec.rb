require 'spec_helper'
require_relative '../lib/eman_fraction'

RSpec.describe Fraction do

  describe '+' do
    it 'adds integers' do
      four = Fraction.new(4)
      nine = Fraction.new(9)

      expect(four + nine).to eq 13
    end
  end
end
