=begin 

		Rspec Matchers

	RSpec "hangs" 'to' and 'not_to' methods on all outcomes
	of expectations

	to()/not_to() methods take one parameter - a matcher

	Matcher ex:

		be_true/ be_false

		eq 3

		raise_error(SomeError)


	
	Be_predicate - boolean

		If teh object on which the test is operating has a
		predicate (boolean) method - you automatically get
		a 'be_predicate' matcher

		So for exampple 'be_nil' is a valid matcher since
		every Ruby object has a :nil? method


	EXAMPLE

		it "should sum two odd numbers and become even" do
			expect(@calculator.add(3, 3)).to be_even
			expect(@calculator.add(3, 3)).not_to be_odd
		end


	MANY MORE MATCHERS FOR RSPEC
		Check out documentation for API info
=end

	









