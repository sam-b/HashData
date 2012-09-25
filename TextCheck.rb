#shall see whether a string is plausibly english/plaintext or not
class TextCheck
	require 'set'
	@@never_appears = Set.new(['ae','aj','bj','bm','bs','bt','cd','cf','cm','cn','cs','cw','cy','dj','dy','ej',
						'ez','fd','fg','fm','fp','fw','fy','gd','gg','gj','gm','gw','hb','hl','hp','hq',
						'hw','hy','ja','ka','kc','kl','kn','ks','lg','lh','ln','md','mf','mh','nj','nq',
						'oj','pb','pc','pd','pn','pv','pw','py','qm','qr','rj','rk','sk','sv','sy',
						'tg','tq','tz','uf','uo','uv','vo','vt','wl','wr','ws','wy','xd','xe','xf','xh',
						'xn','xo','xr','xs','yg','yh','yu','yw','za','zi'])
	#takes an array of strings and returns any viable plain text ones
	def checkAll(input)
		viable = []
		i = 0
		j = 0
		while i < input.length
			if checkOne(input[i])
				viable[j] = input[i]
				j += 1
			end
			i +=1
		end
		return viable
	end
	def checkOne(input)
		i = 0
		j = 1
		while j < input.length
			if @@never_appears.include?((input[i] + input[j]))
				return false
			end
			i +=1
			j +=1
		end
		return true
	end
end