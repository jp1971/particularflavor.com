#! /bin/bash
# A bash script for installing WordPress from the command line
# Thanks to Navjot Singh - http://wp.tutsplus.com/tutorials/download-and-install-wordpress-via-the-shell-over-ssh/

wget http://wordpress.org/latest.tar.gz  
tar xfz latest.tar.gz	
mv wordpress/* ./ 
rmdir ./wordpress/  
rm -f latest.tar.gz  

# Clean up  
rm -f latest.tar.gz  
rm -f wp-content/plugins/hello.php
rm -f wp-content/themes/twentyfifteen
rm -f wp-content/themes/twentyfourteen
rm -f wp-content/themes/twentythirteen