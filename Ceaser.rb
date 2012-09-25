require './TextCheck.rb'
require './Frequency.rb'
#used to get all the possible ceaser ciphers of an input which can then be
#plausability tested to see if theres a chance there the plain text
class Ceaser
	def encipher(text,shift)
		out = ""
		shift = shift % 26
		while shift < 0
			shift+=26
		end
		i =0
		while(i<text.length)
			c = text[i].downcase.chr
			if((c>='a') && (c<='z'))
				if(( c[0].ord + shift) > 'z'[0].ord)
					out << (c[0].ord + shift -26)
				else
					out << (c[0].ord + shift)
				end
			else
				out << ' '
			end
			i+=1
		end
		return out
	end
	#generates every possible ceaser cipher of the input text
	def bruteForce(text)
		checker = TextCheck.new
		out = []
		i =0
		while i <= 24
			out[i] = encipher(text,i+1)
			i +=1
		end
		out = checker.checkAll(out)
		return out
	end
	def getPossibles(text)
		frequency = Frequency.new
		out = []
		if text.length > 20 then
			out = frequency.analyse(text)
		else
			out = bruteForce(text)
		end
		return out
	end
end
