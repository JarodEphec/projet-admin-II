$ORIGIN intranet.m1-2.ephec-ti.be.
$TTL 86400 ; 1 day
@ IN SOA ns.intranet.m1-2.ephec-ti.be. admin.m1-2.ephec-ti.be. (
        2 ; serial
        43200 ; refresh (12 hours)
        3600 ; retry time in case of a problem (1 hours)
        604800 ; expiration time (1 weeks)
        86400 ; minimum (1 day)
 )
;
@               IN      NS      ns.intranet.m1-2.ephec-ti.be.

;
ns              IN      A       192.168.0.1
cloud			IN		A		192.168.0.2
db	            IN      A       192.168.0.3
www             IN      A       192.168.0.4