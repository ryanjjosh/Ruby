=begin



In this lecture, we will discuss...

	Scope of variables

	Constants

	How the scope works with blocks



SCOPE

	Methods and classes begin new scope for variables

	Outer scope variables do not get carried over to the inner scope

	Use 'local_variables' method to see which variables are in (and which
	are not) the current scope

=end


v1 = "outside"

class MyClass
	def my_method
		# p v1 EXCEPTION THROWN - no such variable exists
		v1 = "inside"
		p v1
		p local_variables
	end
end

p v1 # => outside
obj = MyClass.new
obj.my_method # => inside
			  # => [:v1]
p local_variables # => [:v1, :obj]
p self # => main
puts


=begin
	

Scope: Constants

	Constant is any reference that begins with uppercase, including
	classes and modules

	Constants' scope rules are different than variable scope rules

	Inner scope can see constants defined in outer scope
	and can also override out constants

		*Value remains unchanged outside!

	
=end


module Test
	PI = 3.14
	class Test2
		def what_is_pi
			puts PI
		end
	end
end
Test::Test2.new.what_is_pi  # => 3.14
puts


module MyModule
	MyConstant = 'Outer Constant'
	class MyClass
		puts MyConstant # => Outer Constant
		MyConstant = 'Inner Constant'
		puts MyConstant # => Inner Constant
	end
	puts MyConstant # => Outer Constant
end
puts

# If you see some unusual behavior, CHECK your variable names for uppoer
# or lower case



=begin 

Scrope: Block
	
	Blocks inherit outer scope

	Block is a closure

		Remembers the context in which it was defined and uses that
		context whenever it is called

=end

class BankAccount
	attr_accessor :id, :amount
	def initialize(id, amount)
		@id = id
		@amount = amount
	end
end

acct1 = BankAccount.new(123, 200)
acct2 = BankAccount.new(321, 100)
acct3 = BankAccount.new(421, -100)
accts = [acct1, acct2, acct3]

total_sum = 0
accts.each do |eachAcct|
	total_sum += eachAcct.amount
end

puts total_sum # => 200

puts


=begin  

	Block - Local Scope

		Even though blocks share the outer scope - a variable created
		inside the block is only available to the block

		Parameters(the accepting variable in a method) to the block are 
		always local to the block - even if they have the same 
		name as variables in the outer 

		Can explicitly declare block-local variables after a semicolon
		in the block parameter list

=end

arr = [5, 4, 1]
cur_number = 10
arr.each do |cur_number|
	some_var = 10 # Not available outside the block
	print cur_number.to_s + " " # => 5 4 1
end
#puts some_var # Throws error!
puts # print a blank line
puts cur_number # => 10


# If you declare a variable OUTSIDE a block the variable can be globally
# changed INSIDE the block. UNLESS the variable is declared locally 
# (|cur_number; adjustement|)
adjustment = 5
arr.each do |cur_number; adjustment|
	adjustment = 10
	print "#{cur_number + adjustment} " # => 15 14 11
end
puts
puts adjustment # 5 (Not affected by the block)


=begin 

	Summary

		Methods and classes start a new scope

		Constants maintain scope

		Blocks inherit out scope

			Coule be overridden

=ende








