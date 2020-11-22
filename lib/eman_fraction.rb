class Fraction
  attr_reader :numerator, :denominator

  def initialize(numerator, denominator = 1)
    if numerator.is_a? Float
      convert_to_lowest_terms(numerator.numerator, numerator.denominator)
    else
      convert_to_lowest_terms(numerator, denominator)
    end
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

  def convert_to_lowest_terms(numerator, denominator)
    gcd = numerator.gcd(denominator)
    @numerator = properly_sign(numerator, denominator) / gcd
    @denominator = (denominator / gcd).abs
  end

  def properly_sign(numerator, denominator)
    denominator.negative? ? - numerator : numerator
  end
end