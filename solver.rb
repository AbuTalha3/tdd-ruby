class Solver
  def factorial(num)
    if num.negative?
      raise ArgumentError, 'No factorial for negative numbers'
    elsif num.zero?
      return 1
    else
      result = 1
      (1..num).each do |i|
        result *= i
      end
    end

    
    result
  end
  
  def reverse(word)
    word.reverse
  end
  
  def fizzbuzz(number)
    return 'fizzbuzz' if (number % 3).zero? && (number % 5).zero?
    return 'fizz' if (number % 3).zero?
    return 'buzz' if (number % 5).zero?

    
    number.to_s
  end
end
