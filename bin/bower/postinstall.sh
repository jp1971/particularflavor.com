#!/bin/bash

# Bower postinstall hook
# @see https://github.com/bower/bower/blob/master/HOOKS.md

## Copy RequireJS to public theme directory
cp wp-content/themes/particular-flavor/bower_components/requirejs/require.js wp-content/themes/particular-flavor/assets/js/
