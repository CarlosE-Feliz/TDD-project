class Solver
  def initialize(input)
    @input = input
  end

  def factorial
    return 'Please choose a number bigger or equal to 0' if @input.negative?
    return 1 if @input.zero?

    factorial = 1
    until @input == 1
      factorial *= @input
      @input -= 1
    end
    factorial
  end

  def reverse
    @input.reverse
  end

  def fizzbuzz
    divisible_by3 = @input.modulo(3).zero?
    divisible_by5 = @input.modulo(5).zero?

    return 'fizzbuzz' if divisible_by3 && divisible_by5
    return 'buzz' if divisible_by5
    return 'fizz' if divisible_by3

    @input.to_s
  end
end
