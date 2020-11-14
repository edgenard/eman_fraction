class Fraction
  attr_reader :numerator, :denominator
  def initialize(numerator, denominator = 1)
    @numerator = numerator
    @denominator = denominator
  end

  def +(other)
    self.class.new(numerator + other.numerator, denominator)
  end


  def ==(other)
    other.numerator == numerator
  end
end