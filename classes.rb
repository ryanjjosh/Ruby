=begin

CLASSES

	OO Review
		Identify things your program is dealing with
		
		Classes are things(blueprints)
			Containersa of methods (behavior)
		
		Objects are instances of those things
		
		Objects contain instance variables (state). <-- like properties of an object (car is RED)



	Instance Variables

		Begin with @
			Example: @name

		Not declared
			Spring into existence when first used

		Available to all instance methods of the class



	Object Creation

		Classes are factories
			Calling new method creates an instance of classes
				new causes initialize

		Objects state can be (should be) initialized inside the initialize method, the "constructor"


=end



class Person
	def initialize (name, age) # "CONSTRUCTOR"
		@name = name
		@age = age
	end
	def get_info
		@additional_info = "Interesting"
		"Name: #{@name}, age: #{@age}"
	end
end

person1 = Person.new("Joe", 14)
p person1.instance_variables # [:@name, :@age]
puts person1.get_info # => Name: Joe, age: 14
p person1.instance_variables # [:@name, :@age, :@additional_info]
puts

=begin
	
	Accessing Date

		Instance variables are private
			-Cannot be accessed from outside the class

		Methods have public access by default

		To access instance variables - need to define "getter" / "setter" methods
	
=end


class Person
	def initialize (name, age) # CONSTRUCTOR
		@name = name
		@age = age
	end
	def name
		@name
	end
	def name= (new_name)
		@name = new_name
	end
end

person1 = Person.new("Joe", 14)
puts person1.name # Joe
person1.name = "Mike"
puts person1.name #Mike
puts
# puts person1.age   <--- undefined method 'age' for #<Person:>


=begin
	
	Accessing Date (Cont)

	Many times the getter/setter logic is simple
		-Get existing value / Set new value

	There should be an easier way instead of actually defining the getter/setter methods...

	THERE IS!

	Use attr_* form instead
		attr_accessor - getter and setter
		attr_reader - getter only
		attr_writer - setter only

	
=end


class Person1
	attr_accessor :name1, :age1 # getters and setters for name and age
end

person11 = Person1.new
p person11.name1 # => nil
person11.name1 = "Mike" 
person11.age1 = 15
puts person11.name1 # => Mike
puts person11.age1  # => 15
person11.age1 = 20
puts person11.age1 # => fifteen
puts

=begin
	
	Acessing Data (Continued)

	Two problems with the previous example
		1. Person is in an unitialized state upon creation (without a name or age)
		2. We probably want to control the maximmum age assigned


	Solution: Use a constructor and a more intelligent age setter

	But first, we need to talk about self...


	self

		-Insided instance method, self refers to the object itself
		-Usually, using self for calling other methods of the same instance is extraneous
		-At other times, using self is required
			EX. -When it could mean a local variable assignment
		-Outside instance method definition, self refers to the class itself

		http://blog.honeybadger.io/ruby-self-cheat-sheet/
	
=end

class Person2
	attr_reader :age2
	attr_accessor :name2

	def initialize (name, ageVar)  #CONSTRUCTOR
		@name2 = name
		self.age2 = ageVar # call the age2= method. MUST PUT self. so that it calls the age2 method INSIDE the class rather than assign age as a local variable
		puts age2
	end
	def age2= (new_age)
		@age2 = new_age unless new_age > 120
	end
end

person2 = Person2.new("Kim", 13)  # => 13
puts "my age is #{person2.age2}"  # => My age is 13
person2.age2 = 130  # Try to change the age
puts person2.age2  # => 13 (The setter didn't allow the change)
puts "my name is #{person2.name2}"


=begin
	
SUMMARY

	Objects are created with 'new'
	Use the short form of setting/getting data (attr_)
	Don't forget 'self' when required
	
=end







