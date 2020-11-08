class Fraction
  attr_reader :number
  def initialize(number)
    @number = number
  end

  def +(other)
    @number + other.number
  end
end