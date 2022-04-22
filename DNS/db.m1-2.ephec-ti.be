$ORIGIN m1-2.ephec-ti.be.
$TTL 86400 ; 1 day
@ IN SOA ns.m1-2.ephec-ti.be. admin.m1-2.ephec-ti.be. (
        1 ; serial
        43200 ; refresh (12 hours)
        3600 ; retry time in case of a problem (1 hours)
        604800 ; expiration time (1 weeks)
        86400 ; minimum (1 day)
 )
;
@       IN      NS      ns.m1-2.ephec-ti.be.
;       IN      NS      ns2.m1-2.ephec-ti.be.
@	IN	A	176.96.231.201
ns      IN      A       176.96.231.201
web     IN      A       176.96.231.202
