# Manifest Scaffold

This repository is a scaffold for the manifest provides the following:

* A [Vagrant](http://docs.vagrantup.com/v2/boxes.html) virtual machine running Ubunutu 14.0.4, Apache 2.4.7, MySQL 5.5.40, PHP 5.5.9, [WP-CLI](http://wp-cli.org/) and more.
* A shell script (wordpress.sh) that installs latest stable version of WordPress in the root
* The Manifest WordPress parent theme which includes [ACF PRO](http://www.advancedcustomfields.com/pro/), [Timber](http://upstatement.com/timber/) and a number of custom functions and plugins
* The Manifest WordPress child theme that provides an ideal theme structure along with an interactive shell script that handles project specfic naming of files and file contents
* [Bower](http://bower.io/) for managing front end dependencies
* [Grunt](http://gruntjs.com/getting-started) for running tasks such as compiling LESS files, minifying assets and linting JavaScript and PHP files

## Getting started

To create a new project from this repository, start by creating a new, EMPTY Github repostory. Then, open a terminal and run:

```
git clone --bare https://github.com/athletics/wordpress-quick-start.git

cd wordpress-quick-start.git

git push --mirror https://github.com/athletics/new-great-repository.git
```

Once this is complete, delete the bare repository by running the following commands:

```
cd ../

rm -rf wordpress-quick-start.git
```

## Installing WordPress

Clone the repository to which you mirror pushed in the step above, `cd` into its root, then open a terminal and run:

```
./wordpress.sh
```

Once WordPress is installed, build the child theme by running:

```
./child_theme.sh
```

The child_theme.sh script will delete this file and replace it with a README that provides instructions for installing Node.js, Bower, Composer and Grunt.

If you receive a permission denied error running either of the scripts above, run:

```
chmod +x wordpress.sh
```