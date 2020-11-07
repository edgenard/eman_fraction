class Fraction < Numeric
  attr_reader :numerator, :denominator
  def initialize(numerator:, denominator:)
    @numerator = numerator
    @denominator = denominator
    simplify
  end

  def +(other)
    self_numerator = numerator * other.denominator
    other_numerator = other.numerator * denominator
    self.class.new(numerator: self_numerator + other_numerator, denominator: other.denominator * denominator)
  end

  def ==(other)
    numerator == other.numerator && denominator == other.denominator
  end

  def coerce(other)
    [self.class.new(numerator: other.to_i, denominator: 1), self]
  end

  def simplify
    denon_factors = factors(denominator)
    num_factors = factors(numerator)
    common_factors = denon_factors & num_factors
    return if common_factors.empty?
    @numerator = @numerator / common_factors.last
    @denominator = @denominator / common_factors.last
  end

  def factors(number)
    (1..number).select {|x| number % x == 0 }
  end
end