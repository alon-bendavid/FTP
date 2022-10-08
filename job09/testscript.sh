#Créa user
	sudo adduser ${rec_column1,,} --gecos "$rec_column1 $rec_column2 ,,," --disabled-password
	sudo adduser ${rec_column1,,} --shell /bin/false --home /home/{rec_column1,,}
	echo "${rec_column1,,}:$rec_column3" | sudo chpasswd


