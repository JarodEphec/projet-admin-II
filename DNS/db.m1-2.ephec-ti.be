$ORIGIN m1-2.ephec-ti.be.
$TTL 86400 ; 1 day
@ IN SOA ns.m1-2.ephec-ti.be. admin.m1-2.ephec-ti.be. (
        2 ; serial
        43200 ; refresh (12 hours)
        3600 ; retry time in case of a problem (1 hours)
        604800 ; expiration time (1 weeks)
        86400 ; minimum (1 day)
 )
;
@       IN      NS      ns.m1-2.ephec-ti.be.
        IN      MX 10   mail.m1-2.ephec-ti.be.
@       IN      A       176.96.231.200
ns      IN      A       176.96.231.200
www     IN      A       176.96.231.200
b2b     IN      A       176.96.231.200
mail    IN      A       176.96.231.199

smtp    IN      CNAME   mail
imap    IN      CNAME   mail 

dkim._domainkey IN TXT ("v=DKIM1; h=sha256; k=rsa;" "p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAjqKVu9tYdGV04pofB8yDMXkXeniKRziDdPAr45xKQ6zqvXW/E4HDjKIoJWCePJNQCNAn66jKDU1Ub+iF3m42bcGmdjH6brSg6VP4UGpapkZliPflPQtbLJTR+SVbnHLz0mRf135CHD988GW7Luu+dnbFMVsYLbknUiZ3WpORZ46PfKr778WKLTcgNzCeXROPUJ/OEI1P2AWJCb" "tElvmTkcwTKjWmQ/iLKP5JjslrP44J/1YDCj13riQE7vxry97RqKVtHF0WVgShPnh5D0NDXdcVXfLgJqgZ/L6ZwrlEfoZms9v37uJ3SCNhr5jlDcqnAJwUcSZxLPNLz+ek1pjhIwIDAQAB" )

; spf
@ IN TXT "v=spf1 include:mail.m1-2.ephec-ti.be ip4:176.96.231.200 -all

; dmarc
_dmarc IN TXT "v=DMARC1; p=none;"
