#!/usr/bin/env ruby
require_relative './solver'

class Menu
  def factorial
    print 'Enter a number equal or bigger than 0: '
    num = gets.chomp.to_i
    puts
    solver = Solver.new(num)
    puts "Factorial: #{solver.factorial}"
    puts
    options
  end

  def reverse
    print 'Enter a word or sentence: '
    string = gets.chomp
    puts
    solver = Solver.new(string)
    puts "Reverse word: #{solver.reverse}"
    puts
    options
  end

  def fizzbuzz
    print 'Enter a number: '
    num = gets.chomp.to_i
    fizz = Solver.new(num)
    puts
    puts fizz.fizzbuzz
    puts
    options
  end

  def choose_option(option)
    case option
    when 1
      factorial
    when 2
      reverse
    when 3
      fizzbuzz
    when 4
      puts
      puts 'Thanks for playing =D bye bye...'
      puts
      abort
    else
      puts 'Please enter a valid option'
      options
    end
  end

  def options
    puts 'What do you want to do? [Enter a number]:'
    puts '1. Factoral number'
    puts '2. Reverse a word'
    puts '3. FizzBuzz game'
    puts '4. Exit'
    answer = gets.chomp.to_i
    choose_option(answer)
  end
end

def start
  puts
  puts 'Welcome to our application'
  puts
  game = Menu.new
  game.options
end

start
