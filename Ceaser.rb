#used to get all the possible ceaser ciphers of an input which can then be
#plausability tested to see if theres a chance there the plain text
class Ceaser
	def encipher(text,shift)
		out = ""
		shift = shift % 26
		while shift <0
			shift+=26
		end
		i =0
		while(i<text.length)
			c = text[i].chr.upcase
			if((c>='A') && (c<='Z'))
				if(( c[0].ord + shift) > 'Z'[0].ord)
					out << (c[0].ord + shift -26)
				else
					out << (c[0].ord + shift)
				end
			else
				text << ' '
			end
			i+=1
		end
		return out
	end
	def getAll(text)
		out = []
		i =0
		while i <= 24
			out[i] = encipher(text,i+1)
			i +=1
		end
		return out
	end
end
