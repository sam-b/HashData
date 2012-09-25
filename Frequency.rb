class Frequency
	require './TextCheck.rb'
	def analyse(input)
		checker = TextCheck.new
		if checker.checkOne(input) then
 		return input
 		end
 		return []
	end

end