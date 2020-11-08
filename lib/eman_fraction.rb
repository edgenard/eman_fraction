class Fraction
  attr_reader :numerator, :denominator

  def initialize(numerator, denominator = 1)
    @numerator = numerator
    @denominator = denominator
  end

  def +(other)
    Fraction.new(numerator + other.numerator, denominator)
  end
end