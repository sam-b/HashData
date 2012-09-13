########################################################################
# HashData Version 0.2 By Sam Brown, sam@datacurse.org
# mit license
###########################################################################
#!/usr/bin/ruby

#create a 2d array of regexs and the names of the functions they match
require './HashChecker.rb'
require './Ceaser.rb'
require './TextCheck.rb'
puts "
HashData Version 0.2 By DataCurse [Sam Brown, sam@datacurse.org]
mit license
Enter exit to exit program.
"
hash_check = HashChecker.new
ceaser = Ceaser.new
checker = TextCheck.new
while true do
	puts "Please enter your Hash:"
	user_in = gets;
	user_in=user_in.chop
	#get the string the user wants to identify end if they type exit
	if user_in == "exit" then
		break
	end
	out = hash_check.go(user_in)
	ciphers = ceaser.getAll(user_in)
	ciphers = checker.check(ciphers)
	puts "possible ceaser ciphers:"
	puts ciphers
	if out != "" then
		puts out
	else
		puts "Sorry - no hash matches found!"
	end
end
