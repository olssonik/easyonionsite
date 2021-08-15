        clear
        echo "
 _____    _    ______   __   ___  _   _ ___ ___  _   _ 
| ____|  / \  / ___\ \ / /  / _ \| \ | |_ _/ _ \| \ | |
|  _|   / _ \ \___ \\  V /  | | | |  \| || | | | |  \| |
| |___ / ___ \ ___) || |   | |_| | |\  || | |_| | |\  |
|_____/_/   \_\____/ |_|    \___/|_| \_|___\___/|_| \_|
                                                       

"


# glowny przypadek

	sudo apt install tor -y && apt install nginx -y
	sudo service nginx start
	sudo service tor start
	#kopiowanie configu na miejsce aktualnej konfiguracji
	sudo cp conf_files/torrc /etc/tor/
	sudo cp conf_files/nginx.conf /etc/nginx/
	#restart servisow
	sudo service tor restart && sudo service nginx restart
	clear
	echo "give it a second now cuz script will restart tor and nginx service, we are getting there"
	sleep 10
	#adres twojej strony
	echo "And here is Your ready to go onion site"
	sudo cat /var/lib/tor/hidden_service/hostname
