class HashChecker
	@@regexs=[[/^[A-Fa-f0-9]{32}$/,"MD2, MD4, MD5, NTLM or RIPEMD-128"],
	[/^[A-Fa-f0-9]{40}$/,"SHA160Bit[SHA1],SQL 4.x or RIPEMD-160"],
	[/^[A-Fa-f0-9]{64}$/,"SHA 256Bit[Unix]"],
	[/^[A-Fa-f0-9]{98}$/,"SHA 384Bit"],
	[/^[A-Fa-f0-9]{130}$/,"SHA 512Bit[Unix]"],
	[/^[A-Fa-f0-9]{16}$/,"LM, VNC or MySQL323"],
	[/^.{13}$/,"DES"],
	[/^(?:[A-Za-z0-9\+]{4})*(?:[A-Za-z0-9\+]{2}==|[A-Za-z0-9\+]{3}=|[A-Za-z0-9\+]{4})$/,"Base64"],
	[/^[0-9a-f]{120}$/,"Whirlpool, Whirlpool [HMAC]"],
	[/^[0-9a-f]{8}$/,"ADLER32,CRC32,CRC32B"],
	[/^[0-9a-f]{4}$/,"CRC16,CRC16CCITT,FCS16"],
	[/^[0-9a-f]{32}$/,"DomainCachedCredentials,Haval128,RAdmin v2.x,RipeMD128,SNEFRU128,Tiger128"],
	[/^[0-9]{8}$/,"GHash323.GHash325"],
	[/^[a-f0-9]{64}$/,"GOSTR341194, Haval256,RipeMD256,SNEFRU256"],
	[/^[a-f0-9]{40}$/,"Haval160,MySQl5,RipeMD160,Tiger160"],
	[/^[a-f0-9]{48}$/,"Haval192"],
	[/^[a-f0-9]{56}$/,"Haval224"],
	[/^0x[a-f0-9]{30}$/,"LineageIIC4"],
	[/^\$apr.{31}$/,"MD5APR"],
	[/^\$H\$.{31}$/,"MD5phpBB3"],
	[/^\$1\$.{31}$/,"MD5Unix"],
	[/^\$P\$.{31}$/,"MD5WordPress"],
	[/^[a-f0-9]{80}$/,"RipeMD320"],
	[/^sha1\$[A-Fa-f0-9]{47}$/,"SHA1Django"],
	[/^[a-fA-F0-9]{56}$/,"SHA224"],
	[/^[a-fA-F0-9]{96}$/,"SHA384"],
	[/^[a-f0-9]{47}$/,"Tiger192"],
	[/^[a-f0-9]{8}$/,"XOR-32"],
	[/^\*[a-f0-9]{40}$/,"MySQl 160bit"]]
	def go(user_input)
		out = ""
		for i in @@regexs
			#if a regex matches print its title
			if i[0].match(user_input) then
				out += i[1]
			end
		end
		return out
	end
end