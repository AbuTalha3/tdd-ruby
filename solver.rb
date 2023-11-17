class Solver
  def factorial(number)
    if number.negative?
      raise ArgumentError, 'Input must be a non-negative integer'
    elsif number.zero?
      1
    else
      result = 1
      (1..number).each { |i| result *= i }
      result
    end
  end
  