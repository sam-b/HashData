	def analyse(text)
		cipherText = text
		count = {}
		normal = ['e','t','a','o','i','n','s','h','r','d','l','c','u','m','w','f','g','y','p','b','v','k','j','x','q','z']
		while text!="" do
			letter = text[0]
			count[letter]=text.count letter
			text = text.gsub(letter,"")
		end
		count = count.to_a
		sortedlist = removeCounts(sort(count))
		plainText = replace(sortedlist,cipherText,normal)
 		return plainText
	end
	def sort(count)
		if count.length == 0 or count.length == 1 then
			return count
		else
			key = count.delete_at(0)
			lower = []
			j = 0
			i = 0
			while i < count.length do
				if count[i][1] <= key[1] then
					lower[j] = count.delete_at(i)
					j+=1
					i-=1
				end
				i+=1
			end
			higher = []
			j = 0
			i = 0
			while i < count.length do
				if count[i][1] > key[1] then
					higher[j] = count.delete_at(i)
					j+=1
					i-=1
				end
				i+=1
			end
		end
		return sort(higher)+ [key] + sort(lower) 
	end
	def removeCounts(sortedCount)
		i =0
		out = []
		while i < sortedCount.length do
			out[i] = sortedCount[i][0]
			i+=1
		end
		return out
	end
	def replace(list,original,normal)
		i = 0
		out = []
		while i < list.length do
			c = list[i]
			foo = -1
			while foo do
				foo = original.index(c,foo+1)
				if foo then
					out[foo] = normal[i]
				end
			end
			i+=1
		end
		return out.join("")
	end
input = gets
input = input.chop
print analyse(input)