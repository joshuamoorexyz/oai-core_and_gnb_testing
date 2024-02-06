cd ~/containerization

mkdir logs

#start nrf

cd logs

touch nrf.log
touch udr.log
touch udm.log
touch ausf.log
touch ausf.log
touch amf.log
touch spgwu.log
touch mysql.log

cd ..



#start asterik ims

asterisk -fp &


#start oai ext dn




#start mysql

service start mysql > ./logs/mysql.log & 


#start nrf
./nrf/build/nrf/build/nrf -c ./oai_cn_configs/nrf/config.yaml -o > ./logs/nrf.log &


#start udr
./udr/build/udr/build/udr -c ./oai_cn_configs/udr/config.yaml -o > ./logs/udr.log & 



#start udm
./udm/build/udm/build/udm -c ./oai_cn_configs/udm/config.yaml -o ? ./logs/udm.log &




#start ausf
./ausf/build/ausf/build/ausf -c ./oai_cn_configs/ausf/config.yaml -o > ./logs/ausf.log &



#start amf
./amf/build/amf/build/amf -c ./oai_cn_configs/amf/config.yaml -o > ./logs/amf.log & 


#This service does not appear to have built properly

#start spgwu
./spgwu_tiny/build/spgw_u/build/spgwu -c ./oai_cn_configs/spgwu/spgw_u.conf -o > logs/spgwu.log & 


chmod +x /usr/local/bin/start_trf.sh

/usr/local/bin/start_trf.sh




