#Files automatically closed at the end of the block
#Either use exception handling OR check for existence of the file before access

#Printing from a file

=begin
File.foreach('text.txt') do |line| 
	puts line #simply prints out each line from text.txt
	p line #prints line with editing (\n : newline) *quotes*
	p line.chomp #prints line with \n "chomped" off *quotes*
	p line.split #splits each word in the line into an array
end
=end


#Handling Exceptions
=begin
begin
	File.foreach('do_not_exist.txt') do |line|
		puts line.chomp
	end

rescue Exception => e 
	puts e.message
	puts "Let's pretend this didn't happen..."
end
=end

#Alternative to Exceptions
#Use an if statement to test for file (probably want to use exceptions)
=begin
if File.exist? 'text.txt'

	File.foreach('text.txt') do |line|
		puts line.chomp
	end

end
=end


#Writing to a file (file automatically closed after block executes)
=begin
File.open("test1.txt", "w") do |file| #open is a method; "w" indicates you are writing to file
	file.puts "One line"	#block
	file.puts "Another"
end
=end


#Environment Variables

