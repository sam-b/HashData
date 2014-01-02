#!/usr/bin/env ruby

########################################################################
# HashData Version 0.3 By Sam Brown, samdanielbrown@gmail.com
###########################################################################

require './HashChecker.rb'

hash = HashChecker.new
puts "
HashData Version 0.3 By Sam Brown, @sam_bwut
Enter 'exit' to exit program.
"
while true do
	puts "Please enter your Hash:"
	input = gets
	input=input.chop
	#get the string the user wants to identify end if they type exit then exit
	if input == "exit" then
		break
	end
	out = hash.check(input)
	if out != "" then
		puts out
	else
		puts "Sorry - no hash matches found!"
	end
end
