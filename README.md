# Manifest Scaffold

This repository is a scaffold for the manifest provides the following:

* A [Vagrant](http://docs.vagrantup.com/v2/boxes.html) virtual machine running Ubuntu 14.0.4, Apache 2.4.7, MySQL 5.5.40, PHP 5.5.9, [WP-CLI](http://wp-cli.org/) and more.
* A shell script (wordpress.sh) that installs latest stable version of WordPress in the root
* The Manifest WordPress parent theme which includes [ACF PRO](http://www.advancedcustomfields.com/pro/), [Timber](http://upstatement.com/timber/) and a number of custom functions and plugins
* The Manifest WordPress child theme that provides an ideal theme structure along with an interactive shell script that handles project specfic naming of files and file contents
* [Bower](http://bower.io/) for managing front end dependencies
* [Grunt](http://gruntjs.com/getting-started) for running tasks such as compiling LESS files, minifying assets and linting JavaScript and PHP files

## Getting started

To create a new project from this repository, start by creating a new, EMPTY Github repostory. Then, open a terminal and run:

```
git clone --bare https://github.com/athletics/manifest-scaffold.git

cd wordpress-quick-start.git

# Change new-github-repository in the URL below to the slug of the newly created Github repository
git push --mirror https://github.com/athletics/new-github-repository.git
```

Once this is complete, delete the bare repository by running the following commands:

```
cd ../

rm -rf manifest-scaffold.git
```

## Installing WordPress

Clone the repository to which you mirror pushed in the step above, `cd` into its root, then open a terminal and run:

```
./wordpress.sh
```

Once WordPress is installed, configure the Manifest parent and child themes by running:

```
./mainfest.sh
```
*Note: If you receive a permission denied error trying to run either of the scripts above, run the following command:*

```
chmod +x wordpress.sh
```

This script is interactive and will change directory and file names and file contents based on user input. It will also delete this file and replace it with a README that provides instructions for installing starting the virtual server, configuring WordPress and installing the prerequistes needed to use the included development tools.  