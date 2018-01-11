time_2 = 2
time_2 *= 2 while time_2 <100
#puts time_2

##############################

a = 5
b = 0

#puts "One Liner" if a == 5 and b == 0

###############################

def add(one, two)
	one + two
end 

def divide(one, two)
	return "I don't think so" if two == 0
	one / two
end

#puts add(2, 2)
#puts divide(2,0)
#puts divide(12, 4)

###############################

def can_divide_by?(number)
	return false if number.zero?
	true
end

#puts can_divide_by? 3
#puts can_divide_by? 0

################################

#Factorials! Default Arguments
def factorial (n)
	n == 0? 1 : n * factorial(n-1)
end

#puts factorial 5

################################

#Blocks

#1.times { puts "Hello World!"}

#Blocks can accept parameters between ||
2.times do |index|
	if index > 0
#		puts index
	end
end

#Same as above just one lined
#2.times { |index| puts index if index >0}


#Implicit
def two_times_implicit
	return "No block" unless block_given? #if you don't check block_given then exception is thrown
	yield
	yield
end

#puts two_times_implicit { print "Hello"}

#puts two_times_implicit


#Explicit
def two_times_explicit (&i_am_a_block)
	return "No Block" if i_am_a_block.nil? #.nil compares arguement to 0
	i_am_a_block.call
	i_am_a_block.call
end

#puts two_times_explicit
#two_times_explicit { puts "Hello"}

################################