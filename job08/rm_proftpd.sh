#!/bin/bash


sudo service proftpd stop


# Removing completly proftpd and any related package 

sudo apt-get --purge remove proftpd* openssl

sudo apt-get remove proftpd-basic 

sudo apt-get remove --auto-remove proftpd-basic 

sudo apt-get purge proftpd-basic 

sudo apt-get purge --auto-remove proftpd-basic 
