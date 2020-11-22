class Fraction
  attr_reader :numerator, :denominator

  def initialize(numerator, denominator = 1)
    gcd = numerator.gcd(denominator)
    lowest_term_numerator = numerator / gcd
    @numerator = denominator.negative? ? -lowest_term_numerator : lowest_term_numerator
    @denominator = (denominator / gcd).abs
  end

  def +(other)
    common_denominator = denominator * other.denominator
    numerator_sum = numerator * other.denominator + (other.numerator * denominator)

    Fraction.new(numerator_sum, common_denominator)
  end

  def ==(other)
    numerator == other.numerator && denominator == other.denominator
  end

  def coerce(other)
    [Fraction.new(other), self]
  end
end