# wordpress-quick-start

Let's get WordPress up and running quickly! This WordPress runs on a [Vagrant Box](http://docs.vagrantup.com/v2/boxes.html) virtual machine, bootstrapped with a composer.json file. The front end dependencies are handled with [Bower](http://bower.io/) and build processes are handeled by [Grunt](http://gruntjs.com/getting-started). Both grunt and bower have [node.js](http://nodejs.org/) as a dependency. The CSS preprocesser is [LESS](http://lesscss.org/).

##Cloning me!
We can't just build off of me! think of all the great developers that need me too. What we'll have to do is make a bare clone of myself and then a mirror push it sounds harder than it is. To set up a project create a new EMPTY github repository, then open terminal and run:
```
git clone --bare https://github.com/athletics/wordpress-quick-start.git
cd wordpress-quick-start.git
git push --mirror https://github.com/athletics/new-great-repository.git

#we don't need me anymore, go back one directory and remove me!
cd ../
rm -rf wordpress-quick-start.git

```


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