#! /usr/bin/bash

if [ $# -lt 2 ];then

	echo -e "\nThis script requires 2 parameters."
	exit 0

else

	curl -so page_source.html  https://www.instagram.com/"$1"/
	grep -oP '(?<=profile_pic_url":").*?(?='"jpg?"')' page_source.html > pic_code.txt
	rm page_source.html

	if [ ! -s pic_code.txt ]; then 
	echo "No user found"
	exit 0
	else

		aws sns create-sms-sandbox-phone-number --phone-number "$2"
		echo "Enter Verification Code"
		read code
		aws sns verify-sms-sandbox-phone-number --phone-number "$2" --one-time-password "$code"

			while true
			 do

			curl -so page_source.html  https://www.instagram.com/"$1"/
			grep -oP '(?<=profile_pic_url":").*?(?='"jpg?"')' page_source.html > new_pic_code.txt
			rm page_source.html

			DIFF=$(diff pic_code.txt new_pic_code.txt) 
				if [ "$DIFF" != "" ] 
				then
					rm pic_code.txt
					mv new_pic_code.txt pic_code.txt
					aws sns publish --message "$1 changed instagram picture" --phone-number "$2"
				fi
			sleep 300
			done
	fi
fi
