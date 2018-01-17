=begin
	
HASHES

	Accessed using the [] operator

	Values set using
		=> (creation)   Called a Hash Racket
		[] (post creation)

	
=end


editor_props = { "font" => "Arial", "size" => 12, "color" => "red"}


# THE ABOVE IS NOT A BLOCK - IT'S A HASH
puts editor_props.length # => 3
puts editor_props["font"] # => Arial

editor_props["background"] = "Blue"
editor_props.each_pair do |key, value|
	puts "Key: #{key} Value: #{value}"
end

# => Key: font Value: Ariel
# => Key: size Value: 12
# => Key: color Value: red
# => Key: background Value: Blue



=begin
	
	What if you try to access a value in the Hash for which an entry does not exist?
		-nil is returned

	If a Hash is created with Hash.new(0), 0 is returned instead

	
=end


word_frequency = Hash.new(0)

sentence = "Chicka chicka boom boom"
sentence.split.each do |word|
	word_frequency[word.downcase] += 1
end

p word_frequency # => {"chicka" => 2, "boom" => 2}


=begin
	
	As of Ruby 1.9 
		The order of putting things into Hash maintained (more like arrays than buckets)
		If using symbols as keys - can use symbol: syntax

	If a Hash is the last argument to a method, {} are optional
	
=end

# Hash keeps order as youngest is at the end
family_tree_19 = {oldest: "Jim", older: "Joe", younger: "Jack"}
family_tree_19[:youngest] = "Jeremy"
p family_tree_19
# => {:oldest=>"Jim", :older=>"Joe", :younger=>"Jack", :youngest=>"Jeremy"}


# Named parameter "like" behaviour...
def adjust_colors (props = {foreground: "red", background: "white"})
	puts "Foreground: #{props[:foregound]}" if props[:foregound]
	puts "Background: #{props[:background]}" if props[:background]
end
adjust_colors # => foreground: red
			  # => background: white
adjust_colors ({ :foregound => "green"}) # => foreground: green
adjust_colors background: "yella" # => background: yella
adjust_colors :background => "magenta"  # => background: magenta




# Let's say you have a Hash
a_hash = { :one => "one"}

# Then, you output it
puts a_hash # => {:one=>"one"}

# If you try to do it in one step - you get a SyntaxError
## puts { :one => "one"}

# RUBY GETS CONFUSED AND THINKS {} IS A BLOCK!!!

# To get around this - you can use parens
puts ({ :one => "one" }) # => {:one=>"one"}

# Or drop the {} altogether...
puts one: "one" # => {:one=>"one"}























