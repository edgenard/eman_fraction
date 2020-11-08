class Fraction
  attr_reader :numerator, :denominator

  def initialize(numerator, denominator = 1)
    @numerator = numerator
    @denominator = denominator
  end

  def +(other)
    if denominator >= other.denominator
      common_denominator = denominator
      smallest_common_multiple =  common_denominator / other.denominator
      numerator_sum = numerator + (other.numerator * smallest_common_multiple)
    else
      common_denominator = other.denominator
      smallest_common_multiple = common_denominator / denominator
      numerator_sum = (numerator * smallest_common_multiple) + other.numerator
    end

    Fraction.new(numerator_sum, common_denominator)
  end


  def common_denominator(other)

  end
end