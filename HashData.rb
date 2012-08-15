########################################################################
# HashData Version 0.2 By Sam Brown, sam@datacurse.org
# mit license
###########################################################################
#!/usr/bin/ruby

#create a 2d array of regexs and the names of the functions they match
require './HashChecker.rb'
puts "
HashData Version 0.2 By DataCurse [Sam Brown, sam@datacurse.org]
mit license
Enter exit to exit program.
"
checker = HashChecker.new
while true do
	puts "Please enter your Hash:"
	user_in = gets;
	#get the string the user wants to identify end if they type exit
	if user_in == "exit\n" then
		break
	end
	out = checker.go(user_in)
	if out != "" then
		puts out
	else
		puts "Sorry - no matches found!"
	end
end
