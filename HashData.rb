########################################################################
# HashData Version 0.2 By DataCurse [Sam Brown, sam@datacurse.org]
# mit license
###########################################################################
#!/usr/bin/ruby

regexs=[[/^[A-Fa-f0-9]{32}$/,"MD2, MD4, MD5, NTLM or RIPEMD-128"],
[/^[A-Fa-f0-9]{40}$/,"SHA160Bit[SHA1],SQL 4.x or RIPEMD-160"],
[/^[A-Fa-f0-9]{64}$/,"SHA 256Bit[Unix]"],
[/^[A-Fa-f0-9]{98}$/,"SHA 384Bit"],
[/^[A-Fa-f0-9]{130}$/,"SHA 512Bit[Unix]"],
[/^[A-Fa-f0-9]{16}$/,"LM, VNC or MySQL323"],
[/^.{13}$/,"DES"],
[/^(?:[A-Za-z0-9\+]{4})*(?:[A-Za-z0-9\+]{2}==|[A-Za-z0-9\+]{3}=|[A-Za-z0-9\+]{4})$/,"Base64"],
[/^[0-9a-f]{120}$/,"Whirlpool, Whirlpoll [HMAC]"],
[/^[0-9a-f]{8}$/,"ADLER32,CRC32,CRC32B"],
[/^[0-9a-f]{4}$/,"CRC16,CRC16CCITT,FCS16"],
[/^[0-9a-f]{32}$/,"DomainCachedCredentials,Haval128,RAdmin v2.x,RipeMD128"],
[/^[0-9]{8}$/,"GHash323.GHash325"],
[/^[a-f0-9]{64}$/,"GOSTR341194, Haval256,RipeMD256"],
[/^[a-f0-9]{40}$/,"Haval160,MySQl5,RipeMD160"],
[/^[a-f0-9]{48}$/,"Haval192"],
[/^[a-f0-9]{56}$/,"Haval224"],
[/^0x[a-f0-9]{30}$/,"LineageIIC4"],
[/^\$apr.{31}$/,"MD5APR"],
[/^\$H\$.{31}$/,"MD5phpBB3"],
[/^\$1\$.{31}$/,"MD5Unix"],
[/^\$P\$.{31}$/,"MD5WordPress"],
[/^[a-f0-9]{80}$/,"RipeMD320"]]

puts"
HashData Version 0.2 By DataCurse [Sam Brown, sam@datacurse.org]
mit license
Enter exit to exit program.
"
result = false
while true do
	puts "Please enter your Hash:"
	user_in = gets;
	if user_in == "exit\n" then
		break
	end
	for i in regexs
		if i[0].match(user_in) then
			result = true
			puts(i[1])
		end
	end
	if not result then
		puts "Sorry - no matches found!"
	end
end
