=begin
	
String

	Single Quote literal strings are VERY literal
		Allow escaping of ' with \
		Show (almost) everything else AS IS

	Double-goated strings
		Interpret special characters like \n and \t
		Allow string interpolation (Don't both concatenating with +
	
=end

single_quoted = 'ice cream \n followed by it\'s a party!'
double_quoted = "ice cream \n followed by it\'s a party!"

puts single_quoted # => ice cream \n followed by it's a party!
puts double_quoted # => ice cream
					# => followed by it's a party!

def multiply (one, two)
	"#{one} multiplied by #{two} equals #{one * two}"
end
puts multiply(5,3)
# => 5 multiplied by 3 equals 15

=begin

More Strings
	
	String methods ending with ! modify the existing string
		Most others just return a new string

	Can also use %Q{long multiline string}
		Same behavior as double-quoted string

	^ Very inmportant to master string API
=end

my_name = " tim"
puts my_name.lstrip.capitalize # => Tim
p my_name # => " tim"
my_name.lstrip! # (destructive) removes leading space from variable!
my_name[0] = 'K' #replace the first character from variable
puts my_name # => Kim

cur_weather = %Q{It's a hot day outside
				Grab your umbrellas...}

cur_weather.lines do |line| #.lines breaks object into lines and the DO while there is a line
	line.sub! 'hot', 'rainy' #sub substitues variable data and ! makes it permanent
	puts "#{line.strip}"
end

=begin
	
Symbols

	EX. :foo-   
	Highly optimied strings

	Constant names that you don't have to pre-declare
		"Stands for something" string type

	Guaranteed to be unique and immutable

	Can be converted to a String with to_s
		Or from String to Symbol with to_sym

	Symbols can be a representation of a method name
		Symbols capture information

	Symbols and Strings are similar - you must determine
	which makes more sense to use

end


