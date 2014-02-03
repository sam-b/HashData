class HashChecker
  PATTERNS = [
    [/^[a-f0-9]{4}$/, 'CRC-16, CRC-16-CCITT, FCS-16'],
    [/^[a-f0-9]{8}$/, 'Adler32, CRC-32, CRC-32B, FCS-32, GHash-32-3, GHash-32-5, XOR-32, FNV-132, Joaat'],
    [/^\+[a-z0-9\/\.]{12}$/, 'Blowfish(Eggdrop)'],
    [/^.{0,2}[a-z0-9\/\.]{11}$/, 'DES(Unix)'],
    [/^[a-f0-9]{16}$/, 'MySQL3.x, LM, DES(Oracle), VNC, FNV-164'],
    [/^[a-z0-9\/\.]{16}$/, 'MD5(Cisco PIX)'],
    [/^\$1\$.{0,8}\$[a-z0-9\/\.]{22}$/, 'MD5(Unix)'],
    [/^\$apr1\$.{0,8}\$[a-z0-9\/\.]{22}$/, 'MD5(APR)'],
    [/^[a-f0-9]{24}$/, 'CRC-96(ZIP)'],
    [/^\$H\$[a-z0-9\/\.]{31}$/, 'MD5(phpBB3)'],
    [/^\$P\$[a-z0-9\/\.]{31}$/, 'MD5(Wordpress)'],
    [/^[0-9a-f]{32}$/, 'MD5, NTLM, Domain Cached Credentials, Domain Cached Credentials 2, RAdminv2.x, MD4, MD2,RIPEMD-128, Haval-128, Tiger-128, Snefru-128, Skein-256(128), Skein-512(128)'],
    [/^0x[a-f0-9]{32}$/, 'Lineage II C4'],
    [/^[a-f0-9]{32}:[a-z0-9]{16,32}$/, 'MD5(Joomla)'],
    [/^[a-f0-9]{32}:.{5}$/, 'MD5(IP.Board)'],
    [/^[a-f0-9]{32}:[a-z0-9]{8}$/, 'MD5(MyBB)'],
    [/^[a-f0-9]{40}$/, 'SHA-1, MySQL4.x, RIPEMD-160, Haval-160, SHA-1(MaNGOS), SHA-1(MaNGOS2), Tiger-160, Skein-256(160), Skein-512(160)'],
    [/^\*[a-f0-9]{40}$/, 'MySQL5.x'],
    [/^sha1\$.{0,32}\$[a-f0-9]{40}$/, 'SHA-1(Django)'],
    [/^0x0100[a-f0-9]{0,8}?[a-f0-9]{40}$/, 'MSSQL(2005), MSSQL(2008)'],
    [/^[a-f0-9]{48}$/, 'Haval-192, Tiger-192'],
    [/^[a-f0-9]{51}$/, 'MD5(Palshop)'],
    [/^\$S\$[a-z0-9\/\.]{52}$/, 'SHA-512(Drupal)'],
    [/^\$2a\$[0-9]{0,2}?\$[a-z0-9\/\.]{53}$/, 'Blowfish(OpenBSD)'],
    [/^[a-f0-9]{56}$/, 'SHA-224, Haval-224, Keccak-224, Skein-256(224), Skein-512(224)'],
    [/^[a-f0-9]{64}$/, 'SHA-256, RIPEMD-256, Haval-256, Snefru-256, GOST R 34.11-94, Keccak-256, Skein-256,Skein-512(256)'],
    [/^sha256\$.{0,32}\$[a-f0-9]{64}$/, 'SHA-256(Django)'],
    [/^\$5\$.{0,22}\$[a-z0-9\/\.]{43,69}$/, 'SHA-256(Unix)'],
    [/^[a-f0-9]{80}$/, 'RIPEMD-320'],
    [/^0x0100[a-f0-9]{0,8}?[a-f0-9]{80}$/, 'MSSQL(2000)'],
    [/^\$6\$.{0,22}\$[a-z0-9\/\.]{86}$/, 'SHA-512(Unix)'],
    [/^[a-f0-9]{96}$/, 'SHA-384, SHA3-384, Skein-512(384), Skein-1024(384)'],
    [/^sha384\$.{0,32}\$[a-f0-9]{96}$/, 'SHA-384(Django)'],
    [/^[a-f0-9]{128}$/, 'SHA-512, Whirlpool, SHA3-512, Skein-512, Skein-1024(512)'],
    [/^[a-f0-9]{256}$/, 'Skein-1024'],
    [/^({SSHA})?[a-z0-9\+\/]{32,38}?(==)?$/, 'SSHA-1'],
    [/^\(?[a-z0-9\+\/]{20}\)?$/, 'Lotus Domino'],
    [/^[a-f0-9]{32}:[a-z0-9]{2}$/, 'MD5(osCommerce)'],
    [/^[a-f0-9]{32}:[a-f0-9]{32}$/, 'SAM(LM_Hash:NT_Hash)']
  ].freeze

  def check(input)
    PATTERNS.map { |i| i[1] if i[0].match(input) }.compact.uniq.join(', ')
  end
end
