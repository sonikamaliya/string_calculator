# String Calculator

This is a simple ruby string calculator for adding numbers from given delimited string.
This programm is developed using TDD rules with Rspec.

## What features it includes

- Handles empty strings scenario, returning '0'
- Supports single numbers like 1 or 5 
- It will adds multiple numbers separated by commas or new lines like "1,2" or "1,2\n3"
- It supports custom delimiters like "//;\n1;2"
- Raises an error for negative numbers

## Installation

Make sure you have Ruby and Bundler installed. If you don't have RSpec installed, you can do so by running:

gem install rspec

## Clone the repository:

git clone https://github.com/sonikamaliya/string_calculator.git

cd string_calculator

## Usage:
You can use the StringCalculator class as follows:
Open the irb in terminal and follow below steps:

require_relative 'string_calculator'

calculator = StringCalculator.new

result = calculator.add("1,2,3")  # => 6

## Supported Input Formats:

-> An empty string returns 0:
    calculator.add("") # => 0

-> single number:
    calculator.add("5") # => 5

-> Two or more numbers:
    calculator.add("1,2") # => 3
    calculator.add("1,2,3") # => 6

-> New lines as delimiters:
    calculator.add("1\n2,3") # => 6

-> Custom delimiters:
    calculator.add("//;\n1;2") # => 3

-> Negative numbers raise an error:
    calculator.add("1,-2") # Raises "Negative numbers not allowed: -2"

## Running Tests    

    To run the tests, ensure you're in the project directory and execute:

        rspec string_calculator_spec.rb

