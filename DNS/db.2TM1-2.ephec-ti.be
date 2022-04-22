$ORIGIN 2TM1-2.ephec-ti.be.
$TTL 86400 ; 1 day
@ IN SOA ns.2TM1-2.ephec-ti.be. admin.2TM1-2.ephec-ti.be. (
        1 ; serial
        43200 ; refresh (12 hours)
        3600 ; retry time in case of a problem (1 hours)
        604800 ; expiration time (1 weeks)
        86400 ; minimum (1 day)
 )
;
@       IN      NS      ns1.2TM1-2.ephec-ti.be.
;       IN      NS      ns2.2TM1-2.ephec-ti.be.
@		IN		A		176.96.231.201
ns1     IN      A       176.96.231.201
web     IN      A       176.96.231.202