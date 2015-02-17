# wordpress-quick-start

Lets get WordPress up and running quickly! This wordpress runs on a [Vagrant Box](http://docs.vagrantup.com/v2/boxes.html) virtual machine, bootstrapped with a composer.json file. The front end dependencies are handled with [Bower](http://bower.io/) and build processes are handeled by [Grunt](http://gruntjs.com/getting-started). Both grunt and bower have [node.js](http://nodejs.org/) as a dependency. The CSS preprocesser is [LESS](http://lesscss.org/).

##Installing Dependencies
First you'll need node, follow the node installer [here](http://nodejs.org/)

Next you need to install Bower and Grunt globally.

Go to terminal and run
```
npm install -g bower
```
then
```
npm install -g grunt-cli
```
Next you'll need wget for the wp-installer. If you're using OS X, install [Homebrew](http://brew.sh/). Once homebrew is installed run 
```
brew install wget
```

## ENOUGH, Lets get running

First, in terminal, cd into the quickstart directory, run the install_wordpress.sh file with the command:

```
./install_wordpress.sh
```
This will install the latest verison of WordPress to the webroot.

Great, now lets bootstrap our porject with a parent theme using the composer file. In terminal run:
```
composer install
```

Next, we need to install all the node pacakage dependences for grunt, do this by running:
```
npm install
```

Now we need to install all our reqiured pacakges with bower. Run in the terminal:
```
bower install
```





