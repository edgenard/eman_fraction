class Fraction
  attr_reader :numerator, :denominator
  def initialize(numerator, denominator = 1)
    simplify(numerator, denominator)
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
end