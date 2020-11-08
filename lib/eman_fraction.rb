class Fraction
  attr_reader :numerator, :denominator

  def initialize(numerator, denominator = 1)
    @numerator = numerator
    @denominator = denominator
  end

  def +(other)
    if denominator >= other.denominator
      smallest_common_multiple =  denominator / other.denominator
      numerator_sum = numerator + (other.numerator * smallest_common_multiple)
      common_denominator = denominator
    else
      smallest_common_multiple = other.denominator / denominator
      numerator_sum = (numerator * smallest_common_multiple) + other.numerator
      common_denominator = other.denominator
    end

    Fraction.new(numerator_sum, common_denominator)
  end
end