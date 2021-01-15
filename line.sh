#!/bin/bash
#トークンを記述
token=""
#メッセージを送信

#curl -X POST -H "Authorization: Bearer ${token}" -F "message = hello world" https://notify-api.line.me/api/notify

curl -X POST -H "Authorization: Bearer ${token}" -F "message = `date`" https://notify-api.line.me/api/notify

curl -X POST -H "Authorization: Bearer ${token}" -F "message = 現在の室内温度" https://notify-api.line.me/api/notify

curl -X POST -H "Authorization: Bearer ${token}" -F "message = `python /home/pi/p4p/L12/ds18b20.py` " https://notify-api.line.me/api/notify

python /home/pi/p4p/L12/ds18b20.py > /home/pi/p4p/L12/thermal_out/thermal_outfile.txt
