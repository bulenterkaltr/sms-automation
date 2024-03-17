#!/data/data/com.termux/files/usr/bin/bash

while getopts f: flag
do
	case "${flag}" in
		f) fname=${OPTARG} 
			echo "sms sending"
			i=1
			j=10
			while read line

			do

				sleep 3
				termux-sms-send -n [$line]  "\Günün ilk Yatirimina Tamamen CEVRİMSİZ %100 NAKiT ! Slota %25. Çevrimsiz Nakit  ! Anlık CEVRİMSİZ %35 Kayip ! https://rebrand.ws/slotparkguncel"
		#		sed -i '1d' "${fname}"
				termux-toast "Done $i in $j seconds"
				count=$(wc -l <$fname)
				termux-toast "$count users remaining"
				((i++))
				j=$(($j+10))

			done <$fname
			;;

		esac
	done

