class Fraction
  attr_reader :numerator, :denominator
  def initialize(numerator, denominator = 1)
    raise InvalidDenominator if denominator == 0
    simplify(numerator, denominator)
    verify_sign
  end

  def +(other)
    new_numerator = (numerator * other.denominator) + (other.numerator * denominator)
    new_denominator = (denominator * other.denominator)
    self.class.new(new_numerator, new_denominator)
  end


  def ==(other)
    other.numerator == numerator && denominator == other.denominator
  end


  def coerce(other)
    [self.class.new(other), self]
  end


  def simplify(numerator, denominator)
    greatest_common_divisor = numerator.gcd(denominator)
    @numerator = numerator / greatest_common_divisor
    @denominator = denominator / greatest_common_divisor
  end

  def verify_sign
    if denominator < 0
      @numerator = - numerator
      @denominator = denominator.abs
    end
  end

  class InvalidDenominator < StandardError
  end
end