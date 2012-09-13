#shall see whether a string is plausibly english/plaintext or not
class TextCheck
	@@never_appears = ['ae','aj','bj','bm','bs','bt','cd','cf','cm','cn','cs','cw','cy','dj','dy','ej',
						'ez','fd','fg','fm','fp','fw','fy','gd','gg','gj','gm','gw','hb','hl','hp','hq',
						'hw','hy','ja','ka','kc','kl','kn','ks','lg','lh','ln','md','mf','mh','nj','nq',
						'oj','ox','pb','pc','pd','pn','pv','pw','py','qm','qr','rj','rk','sk','sv','sy',
						'tg','tq','tz','uf','uo','uv','vo','vt','wl','wr','ws','wy','xd','xe','xf','xh',
						'xn','xo','xr','xs','yg','yh','yu','yw','za','zi']
	def check(input)
		viable = []
		i = 0
		puts @@never_appears[0]
		while i < input.length
			viable[i] = input[i]
			i +=1
		end
		return viable
	end
end
