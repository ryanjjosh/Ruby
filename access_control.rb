=begin 

In this lecture, we will discuss...

	Three levels of access control

	Controlling access

	How private is a private access?


ACCESS CONTROL

	When designing your class - important to think about how much of it 
	you will be exposing to the world

	Encapsulation: try to hide the internal representation of the
	object so you can change it later

	Three levels: 'public', 'protected', and 'private'


=end

class Car
	def initialize(speed, comfort)
		@rating = speed * comfort
	end

	# Can't SET rating from outside
	def rating
		@rating
	end
end

puts Car.new(4, 5).rating # => 20

=begin 

	Specifying Access Control

		Two ways to specify access control:

		1. Specify 'public', 'protected', or 'private'

			Everything until the next access control keyword will
			be of that access control level

		2. Define the methods regularly and then specify 'public',
		'protected', 'private' access levels and list the comma-
		separated methods under those levels using method
		symbols

	BY DEFAULT, METHODS IN RUBY ARE PUBLIC

=end

class MyAlgorithm
	private
		def test1
			"Private"
		end
	protected
		def test2
			"Protected"
		end
	public
		def public_again
			"Public"
		end
end

class Another
	def test1
		"Private, as declared later on"
	end
	private :test1
end

=begin 


	'public' methods - no access control is enforced 

		Anybody can call these methods

	'protected' methods - can be invoked by the objects of the
	defining class or its subclasses (nobody from outside,
	unless your a sub level class, can call the method)

	'private' methods - cannot be invoked with an explicit
	receiver (even referencing 'self' inside the class won't
	work)

		EXCEPTION: Setting an attribute can be invoked
		with an explicit receiver (SETTER METHOD)


=end


class Person
	def initialize(age)
		self.age = age # LEGAL - EXCEPTION (without self the compiler
		# will see age as a local variable not accessible outside
		# of the method. But using self makes it a class scope
		# so that initialize can set within the private method)

		puts my_age
		# puts self.my_age # ILLEGAL
						   # CANNOT USE self or any other receiver
	end

	private
		def my_age
			@age
		end
		def age=(age)
			@age = age
		end
end

Person.new(25) # => 25


=begin

	SUMMARY

	'public' and 'private' access controls used the most

	'private' methods are not callable from outside or inside the class
	with an explicit receiver

	
=end










