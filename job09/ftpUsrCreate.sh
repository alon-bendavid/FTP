#!/bin/bash



#format is : Id,Prenom,Nom,Mdp,Rôle
while IFS=',' read -r rce_column1 rec_column2 rec_column3 rec_column4 rec_column5
do
   id="$rec_column1"
   fname="$rec_column2"
   lname="$rec_column3"
   passwd="$rec_column4"
   role="$rec_column5"
    


#creating ftp user from csv
sudo adduser --home /var/www/$fname.tld/ --shell /bin/false --ingroup www-data $fname
sudo chmod -R g+rw /var/www/$fname 
done < <(tail -n +2 ftpu.csv)
