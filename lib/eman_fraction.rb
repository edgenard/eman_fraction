class Fraction
  attr_reader :numerator, :denominator

  def initialize(numerator, denominator = 1)
    @numerator = numerator
    @denominator = denominator
  end

  def +(other)
    if denominator >= other.denominator
      common_factor =  denominator/other.denominator
    else
      common_factor = other.denominator / denominator
    end

      numerator_sum = (numerator * common_factor) + other.numerator
      Fraction.new(numerator_sum, other.denominator)
  end
end