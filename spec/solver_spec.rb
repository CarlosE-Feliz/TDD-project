require_relative '../solver'

describe Solver do
  before :each do
    @error = 'Please choose a number bigger or equal to 0'
    @factorial1 = Solver.new(5)
    @factorial2 = Solver.new(-5)
    @reverse1 = Solver.new('word')
    @reverse2 = Solver.new('Welcome to microverse')
    @fizzbuzz1 = Solver.new(9)
    @fizzbuzz2 = Solver.new(20)
    @fizzbuzz3 = Solver.new(15)
    @fizzbuzz4 = Solver.new(7)
  end

  # Factorial number
  it 'kind of Solver?' do
    expect(@factorial1).to be_kind_of Solver
  end

  it 'returns the correct number?' do
    expect(@factorial1.factorial).to eql 120
  end

  it 'Should return an error' do
    expect(@factorial2.factorial).to eql @error
  end

  # Reverse word
  it 'kind of Solver?' do
    expect(@reverse1).to be_kind_of Solver
  end

  it 'return a reverse word' do
    expect(@reverse1.reverse).to eql 'drow'
  end

  it 'return a reverse word with spaces' do
    expect(@reverse2.reverse).to eql 'esrevorcim ot emocleW'
  end

  # FizzBuzz
  it 'kind of Solver?' do
    expect(@fizzbuzz1).to be_kind_of Solver
  end

  it 'Fizz' do
    expect(@fizzbuzz1.fizzbuzz).to eql 'fizz'
  end

  it 'Buzz' do
    expect(@fizzbuzz2.fizzbuzz).to eql 'buzz'
  end

  it 'FizzBuzz' do
    expect(@fizzbuzz3.fizzbuzz).to eql 'fizzbuzz'
  end

  it 'is not divisible by 3 nor 5?' do
    expect(@fizzbuzz4.fizzbuzz).to eql '7'
  end
end
