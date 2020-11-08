class Fraction
  attr_reader :number, :numerator, :denominator

  def initialize(number, denominator = 1)
    @number = number
    @numerator = number
    @denominator = denominator
  end

  def +(other)
    Fraction.new(@number + other.number, denominator)
  end
end