=begin 

UNIT TESTING

	In this lecture, we will discuss...

		Unit Testing (duh)


	Why write tests?

		How do you know that your code works?

				You really have no idea until you run it...

				Because Ruby is a dynamic language, the editor may not
				pick up typos

				How do you refactor with confidence that you
				didn't break anything?

				Serves as documentation for developers


		Enter Test::Unit

			Ruby takes testing very seriously and ships with
			Test::Unit

			In Ruby 1.8 - Test::Unit was bloated with extra libraries
			that included unnecessary code

			Ruby 1.9 stripped Test::Unit to a minimum

			(The new framework is officially called MiniTest, but it's a 
			drop-in replacement, so no changes are required to Test::Unit
			code)

			Member of the XUnit family (Junit, CppUnit)

			Basic Idea - extend Test::Unit::TestCase

			Prefix method names with 'test_'   <------=-------

			If one of the methods fails - others keep going (this
			is a good thing)

			Can use 'setup()' and 'teardown()' methods for setting
			up behavior that will execute before EVERY test method


=end


class Calculator

	attr_reader :name

	def initialize(name)
		@name = name
	end

	def add(one, two)
		one - two
	end

	def subtract(one, two)
		one + two
	end

	def divide(one, two)
		one / two
	end
end




require 'test/unit'
require_relative 'calculator'

class CalculatorTest < Test::Unit::TestCase
	def setup
		@calc = Calculator.new('test')
	end

	def test_addition
		assert_equal 1, @calc.add(2, 2)
	end

	def test_subtraction
		assert_equal 6, @calc.subtract(4, 2)
	end

	def test_division
		assert_equal 2, @calc.divide(4, 2)
	end
end


=begin
	
SEE calculator/calculator_test.rb TO SEE TEST

You can run tests every time to make sure nothing is broken, especially
after making a change

Test can be automated as part of the build process, and have it report
whether things are working or not for you



DIVISION FAILURE

	require 'test/unit'
require_relative 'calculator'

class CalculatorTest < Test::Unit::TestCase
	def setup
		@calc = Calculator.new('test')
	end

	def test_divide_by_zero
		assert_raise ZeroDivisionError do 
			@calc.divide(1,0)
		end
	end
end

Because you cannot divide by zero instead of a test an 
error will be returned.

	To get around this use assert_raise

	assert_raise - specifies the exception you expect
	and, in the coding block, when you expect the 
	exception to occur



		SUMMARY

		Assertions allow you to excercise your code

		Unit tests give you confidence to restructure
		/refaction your code

	
=end















