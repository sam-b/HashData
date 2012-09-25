########################################################################
# HashData Version 0.2 By Sam Brown, sam@datacurse.org
# mit license
###########################################################################
#!/usr/bin/ruby

#create a 2d array of regexs and the names of the functions they match
require './HashChecker.rb'
require './Ceaser.rb'
puts "
HashData Version 0.2 By DataCurse [Sam Brown, sam@datacurse.org]
mit license
Enter exit to exit program.
"
hash = HashChecker.new
ceaser = Ceaser.new
while true do
	puts "Please enter your Hash:"
	input = gets;
	input=input.chop
	#get the string the user wants to identify end if they type exit
	if input == "exit" then
		break
	end
	out = hash.check(input)
	ciphers = ceaser.getPossibles(input)
	puts "possible ciphers:"
	puts "ceaser:"
	puts ciphers
	if out != "" then
		puts out
	else
		puts "Sorry - no hash matches found!"
	end
end
