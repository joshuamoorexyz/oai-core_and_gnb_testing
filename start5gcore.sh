cd ~/containerization


#start nrf
./nrf/build/nrf/build/nrf -c ./oai_cn_configs/nrf/config.yaml -o


#start asterik ims

asterisk -fp


#start oai ext dn




#start mysql





#start udr
./udr/build/udr/build/udr -c ./oai_cn_configs/udr/config.yaml -o



#start udm
./udm/build/udm/build/udm -c ./oai_cn_configs/udm/config.yaml -o




#start ausf
./ausf/build/ausf/build/ausf -c ./oai_cn_configs/ausf/config.yaml -o



#start amf
./amf/build/amf/build/amf -c ./oai_cn_configs/amf/config.yaml -o




#This service does not appear to have built properly

#start spgwu
#./spgwu_tiny/build/spgwu_tiny/build/spgwu_tiny -c /spgwu_tiny/etc/config.yaml -o
./spgwu_tiny/build/spgw_u/build/spgwu -c ./oai_cn_configs/spgwu/spgw_u.conf -o


chmod +x /usr/local/bin/start_trf.sh

/usr/local/bin/start_trf.sh




