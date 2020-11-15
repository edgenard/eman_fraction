class Fraction
  attr_reader :numerator, :denominator
  def initialize(numerator, denominator = 1)
    @numerator = numerator
    @denominator = denominator
  end

  def +(other)
    if denominator == other.denominator
      self.class.new(numerator + other.numerator, denominator)
    else
      new_numerator = (numerator * other.denominator) + (other.numerator * denominator)
      new_denominator = (denominator * other.denominator)
      self.class.new(new_numerator, new_denominator)
    end
  end


  def ==(other)
    other.numerator == numerator && denominator == other.denominator
  end


  def coerce(other)
    [self.class.new(other), self]
  end
end