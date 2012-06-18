########################################################################
# HashData Version 0.2 By DataCurse (Sam Brown, sam@datacurse.org)
# mit license
###########################################################################
import re
import sys
regexs={("^[A-Fa-f0-9]{32}$","MD2, MD4, MD5, NTLM or RIPEMD-128"),
("^[A-Fa-f0-9]{40}$","SHA160Bit(SHA1),SQL 4.x or RIPEMD-160"),
("^[A-Fa-f0-9]{64}$","SHA 256Bit(Unix)"),
("^[A-Fa-f0-9]{98}$","SHA 384Bit"),
("^[A-Fa-f0-9]{130}$","SHA 512Bit(Unix)"),
("^[A-Fa-f0-9]{16}$","LM, VNC or MySQL323"),
("^.{13}$","DES"),
("^([A-Za-z0-9+/]{4})*([A-Za-z0-9+/]{4}|[A-Za-z0-9+/]{3}=|[A-Za-z0-9+/]{2}==)$","Base64"),
("^[0-9a-f]{120}$","Whirlpool, Whirlpoll (HMAC)"),
("^[0-9a-f]{8}$","ADLER32,CRC32,CRC32B"),
("^[0-9a-f]{4}$","CRC16,CRC16CCITT,FCS16"),
("^[0-9a-f]{32}$","DomainCachedCredentials"),
("^[0-9]{8}$","GHash323.GHash325")}

print """
HashData Version 0.2 By DataCurse (Sam Brown, sam@datacurse.org)
mit license
Your hash is:
"""
result = False
if(len(sys.argv)>1):
	for i in regexs:
		if(re.search(i[0],sys.argv[1])):
			result = True
			print i[1]
	if not result:
		print "Sorry - no matches found!"
else:
	print "please provide your hash as a commandline arguement!"
