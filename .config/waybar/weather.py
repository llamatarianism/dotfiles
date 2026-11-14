#!/usr/bin/env python

import requests
import json

icon_list = [' ', ' ', '󰖐 ', '󰖐 ', '', ' ', ' ', '󰖔 ', ' ', ' ', '󰼶 ', '󰼶 ', '󰙿 ', '', '', '󰖓 ', \
        ' ', ' ', '󰼶 ', '󰼶 ', '󰙿 ', '', '', '󰖓 ', ' ', ' ', '󰼶 ', '󰼶 ','󰙿 ','','','󰖓 ',' ', ' ', \
        '󰼶 ', '󰼶 ', '󰙿 ', '', '',  '󰖓 ' ]


weather = requests.get('https://wttr.in/?format=j2').json()['current_condition'][0]
temp = weather['temp_C']

if temp == '-0':
    temp = '0'

icon_type = weather['weatherIconUrl'][0]['value'].split('/')[-1].split('_')[1]

print(icon_list[int(icon_type) - 1] + temp + '°C')

