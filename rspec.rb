=begin 		

			TESTING WITH RSpec

	Test::Unit "does the job", but it would be nice if tests
		would be more descriptive, more English-like

	The writing of the tests is more intuitive as well
		as the output from running the tests


			Installing RSpec

	$ current_dir  rspec --init
		(Creates an .rspec file and folder)


			describe()

	Set of related tests (a.k.a. example group)

	Takes either a String or Class as argument

	All specs must be inside a describe block

	No class to subclass

		Unlike Test::Unit which always subclasses
			TestCase class

	Everything happens inside the describe() method

		before() and after() methods

	'before()' and 'after()' metods are similar to 'setup()'
	and 'teardown()' in MiniTest

	Can pass in either ':each' or ':all' (infrequently used) to 
	specify whether the block will run before/after each test or 
	once before/after all test

	before :all could be useful, if for example you only want
	to connect to a DB once

		it() method

	Used to define the actual RSpec specifications/examples

	Takes an optional string that describes the behavior
	being tested


	^^^^^ See calculator_spec.rb for EXAMPLE

=end





















