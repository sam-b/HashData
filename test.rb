	def encipher(text,shift)
		out = ""
		shift = shift % 26
		while shift < 0
			shift+=26
		end
		i =0
		while(i<text.length)
			c = text[i].upcase.chr
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
puts getAll("hello")