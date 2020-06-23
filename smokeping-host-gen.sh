#!/bin/bash

###############################################################

#						Zmienne edytowalne					#

###############################################################

hostName='' #nazwa grupy hostów do dodania (np. firmaA)
beginIP='' #trzy początkowe oktety adresów IP (np. 10.1.0.)
firstLastIPoctet='' #czwarty oktet początkowego adresu IP (np. 1)
lastLastIPoctet='' #czwarty oktet ostatniego adresu IP (np. 10)

##############################################################

echo -e "+ $hostName\nmenu = $hostName\ntitle = UsĹ‚ugi $hostName\n" >> $hostName"-smokeping".txt #generowanie nagłówka klienta

for (( i=$firstLastIPoctet; i <= $lastLastIPoctet ; i++ ))
do
    IP="$beginIP$i"
	echo -e "++ $hostName$i\nmenu = $IP\ntitle = Statystki ping do $IP\nhost = $IP\n" >> $hostName"-smokeping".txt #generowanie poszczególnych hostów
done