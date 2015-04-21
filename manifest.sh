# Make this script executable - chmod +x build.sh

echo
echo '         8b    d8 8b    d8 8b    d8         '
echo '         88b  d88 88b  d88 88b  d88         '
echo '         88YbdP88 88YbdP88 88YbdP88         '
echo '         88 YY 88 88 YY 88 88 YY 88         '
echo
echo '                 ATHLETICS                  '
echo '      Manifest Child Theme Build Tool       '
echo '                Version 1.0                 '
echo
echo -n 'Child theme full name (e.g. Manifest): '
read themename
echo -n 'Child theme slug name (e.g. manifest): '
read themeslug
echo -n 'Child theme repository URL (e.g. https://github.com/athletics/manifest): '
read themeurl
echo

printf 'Changing directory names' 
sleep .5  
printf '.'
sleep .5 
printf '.'
sleep .5  
printf '.\n'
#find . -type d -maxdepth 2 -name 'krnl-child-theme' -execdir mv {} $themeslug \;
mv wp-content/themes/_manifest-child-theme wp-content/themes/$themeslug

printf 'Changing file names' 
sleep .5  
printf '.'
sleep .5 
printf '.'
sleep .5  
printf '.\n'
mv wp-content/themes/$themeslug/less/manifest-child-theme-bootstrap.less wp-content/themes/$themeslug/less/$themeslug-bootstrap.less 

printf 'Changing file contents' 
sleep .5  
printf '.'
sleep .5 
printf '.'
sleep .5  
printf '.\n'
printf '.\n'

# Replace placeholders with user defined values
sed -e 's/manifest-child-theme/$themename/g' -i '' bin/bower/post_install.sh
sed -e 's/manifest-child-theme/$themeslug/g' -i '' grunt/config.js
sed -e 's/manifest-child-theme/$themeslug/g' -i '' .bowerrc
sed -e 's/manifest-child-theme/$themeslug/g' -i '' bower.json
sed -e 's/manifest-child-theme-url/$themeurl/g' -i '' bower.json
sed -e 's/manifest-child-theme/$themeslug/g' -i '' package.json
sed -e 's/manifest-child-theme-url/$themeurl/g' -i '' package.json
sed -e 's/child-theme-name/$themename/g' -i '' wp-content/$themeslug/style.css
sed -e 's/child-theme-url/${themeurl////\/}/g' -i '' wp-content/$themeslug/style.css

# Remove Manifest Child Theme from composer.json
sed -e '/manifest-child-theme/d' -i '' composer.json

sleep .5 

printf 'Build complete.\n'
echo

echo -n 'Remove this shell script (y/N)?'
read del_bool

if [ '$del_bool' == 'y' ]; then
	printf 'Removing shell script'
	sleep .5  
	printf '.'
	sleep .5 
	printf '.'
	sleep .5  
	printf '.\n'
	rm build.sh
else
	printf 'Not removing shell script...\n'
fi

echo

printf 'Now go make something rad with Manifest!\n'