
#python /home/pi/p4p/L12/ds18b20.py
bash line.sh

#mosquitto_pub --cafile root_ca.crt --cert 7310495069-certificate.pem.crt --key 7310495069-private.pem.key -h a2lakg7kxk6tn7-ats.iot.ap-northeast-1.amazonaws.com -p 8883 -q 1 -t 'device/test' -i device --tls-version tlsv1.2 -m '{"test": "message"}' -d

mosquitto_pub --cafile root_ca.crt --cert 7310495069-certificate.pem.crt --key 7310495069-private.pem.key -h a2lakg7kxk6tn7-ats.iot.ap-northeast-1.amazonaws.com -p 8883 -q 1 -t 'device/thermal' -i device --tls-version tlsv1.2 -f /home/pi/p4p/L12/thermal_out/thermal_record.txt -d


