=begin

Ranges

	Used to express natural consecutive sequences
		1..20, 'a'.. 'z'


	TWO RULES TO REMEMBER
	Two dots -> all-inclusive
		1..10 (1 is included, 10 is included)
	Three dots -> end-exclusive
		1...10 (1 is included, 10 is EXCLUDED)

		THE MORE DOTS YOU HAVE, THE LESS YOU HAVE AT THE END


	EASY TO CREATE
	Efficient
		Only start and end stored
	Can be converted to an array with to_a
	Used for conditions and intervals


=end

some_range = 1..3
puts some_range.max # => 3
puts some_range.include? 2 # => true

puts (1...10) === 5.3 # => true
puts ('a'...'r') === "r" # => false (end-exclusive)

p ('k'..'z').to_a.sample(2) # => ["k", "w"]
# or another random array with 2 letters in range

age = 55
case age
	when 0..12 then puts "Still a baby"
	when 13..99 then puts "Teenage at heart!"
	else puts "You are getting older..."
end
# => Teenager at heart!