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

  # method 2

  # method 3
end

factorial = Solver.new(1)
factorial2 = Solver.new(0)

puts factorial.factorial
puts factorial2.factorial
