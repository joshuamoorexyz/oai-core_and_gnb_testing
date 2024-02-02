cd ~/containerization


#start nrf
./nrf/build/nrf/build/nrf -c /nrf/etc/config.yaml -o


#start asterik ims

asterisk -fp


#start oai ext dn




#start mysql





#start udr
./udr/build/udr/build/udr -c udr/etc/config.yaml -o



#start udm
./udm/build/udm/build/udm -c udm/etc/config.yaml -o




#start ausf
./ausf/build/ausf/build/ausf -c ausf/etc/config.yaml -o



#start amf
./amf/build/amf/build/amf -c amf/etc/config.yaml -o




#This service does not appear to have built properly

#start spgwu
#./spgwu_tiny/build/spgwu_tiny/build/spgwu_tiny -c /spgwu_tiny/etc/config.yaml -o
./spgwu_tiny/build/spgw_u/build/spgwu -c ./spgwu_tiny/etc/spgw_u.conf -o


chmod +x /usr/local/bin/start_trf.sh

/usr/local/bin/start_trf.sh




