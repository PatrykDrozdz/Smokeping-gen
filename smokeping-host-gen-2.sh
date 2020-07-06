#!/bin/bash

###############################################################

#						Zmienne edytowalne

###############################################################

hostName='' #nazwa grupy hostów do dodania (np. firmaA)
beginIP='' #trzy początkowe oktety adresów IP (np. 10.1.0.)
tableIP=(); #ostatnie oktety IP w dowolnej ilości zpisane w nawiasach (2 10 34 50)

##############################################################

echo -e "+ $hostName\nmenu = $hostName\ntitle = UsĹ‚ugi $hostName\n" >> $hostName"-smokeping".txt #generowanie nagłówka klienta

for lastOctet in ${tableIP[*]}
do
    IP="$beginIP$lastOctet";
	echo -e "++ $hostName$lastOctet\nmenu = $IP\ntitle = Statystki ping do $IP\nhost = $IP\n" >> $hostName"-smokeping".txt #generowanie poszczególnych hostów
done

