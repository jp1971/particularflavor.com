# Make this script executable - chmod +x build.sh

echo
echo "                 ATHLETICS                  "
echo "      Manifest Child Theme Build Tool       "
echo "                Version 1.0                 "
echo
echo -n "Child theme full name (e.g. Manifest): "
read themename
echo -n "Child theme slug name (e.g. mnfst): "
read themeslug
echo -n "Child theme URI (e.g. https://github.com/athletics/manifest): "
read themeuri
echo

printf 'Changing directory names' 
sleep .5  
printf '.'
sleep .5 
printf '.'
sleep .5  
printf '.\n'
#find . -type d -maxdepth 2 -name 'krnl-child-theme' -execdir mv {} $themeslug \;
mv wp-content/themes/_mnfst-child-theme wp-content/themes/$themeslug

printf 'Changing file names' 
sleep .5  
printf '.'
sleep .5 
printf '.'
sleep .5  
printf '.\n'
mv wp-content/themes/$themeslug/less/mnfst-child-theme-bootstrap.less wp-content/themes/$themeslug/less/$themeslug-bootstrap.less 

printf 'Changing file contents' 
sleep .5  
printf '.'
sleep .5 
printf '.'
sleep .5  
printf '.\n'
printf '.\n'
sed -e "s/mnfst-child-theme/$themename/g" -i '' bin/bower/post_install.sh
sed -e "s/mnfst-child-theme/$themeslug/g" -i '' grunt/config.js
sed -e "s/mnfst-child-theme/$themeslug/g" -i '' .bowerrc
sed -e "s/mnfst-child-theme/$themeslug/g" -i '' bower.json
sed -e "s/mnfst-child-theme-uri/$themeuri/g" -i '' bower.json
sed -e "s/mnfst-child-theme/$themeslug/g" -i '' package.json
sed -e "s/mnfst-child-theme-uri/$themeuri/g" -i '' package.json
sed -e "s/child-theme-name/$themename/g" -i '' wp-content/$themeslug/style.css
sed -e "s/child-theme-uri/${themeuri////\/}/g" -i '' wp-content/$themeslug/style.css

sleep .5 

printf 'Build complete.\n'
echo

echo -n "Remove this shell script (y/N)?"
read del_bool

if [ "$del_bool" == "y" ]; then
	printf "Removing shell script"
	sleep .5  
	printf '.'
	sleep .5 
	printf '.'
	sleep .5  
	printf '.\n'
	rm build.sh
else
	printf "Not removing shell script...\n"
fi
echo

printf 'Now go make something cool with Manifest!\n'