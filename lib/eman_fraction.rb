class Fraction
  attr_reader :numerator, :denominator

  def initialize(numerator, denominator = 1)
    @numerator = numerator
    @denominator = denominator
  end

  def +(other)
    if denominator >= other.denominator
      common_factor =  denominator/other.denominator
      numerator_sum = numerator + (other.numerator * common_factor)
      Fraction.new(numerator_sum, denominator)
    else
      common_factor = other.denominator / denominator
      numerator_sum = (numerator * common_factor) + other.numerator
      Fraction.new(numerator_sum, other.denominator)
    end
  end
end