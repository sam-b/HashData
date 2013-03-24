#!/usr/bin/ruby

########################################################################
# HashData Version 0.2 By Sam Brown, sam@datacurse.org
# mit license
###########################################################################

#create a 2d array of regexs and the names of the functions they match
require './HashChecker.rb'

hash = HashChecker.new
puts "
HashData Version 0.3 By Sam Brown, sam@datacurse.org
mit license
Enter exit to exit program.
"
while true do
	puts "Please enter your Hash:"
	input = gets
	input=input.chop
	#get the string the user wants to identify end if they type exit
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
