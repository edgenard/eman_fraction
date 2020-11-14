class Fraction
  attr_reader :numerator
  def initialize(numerator)
    @numerator = numerator
  end

  def +(other)
    numerator + other.numerator
  end
end