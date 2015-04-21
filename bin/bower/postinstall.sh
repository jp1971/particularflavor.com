#!/bin/bash

# Bower postinstall hook
# @see https://github.com/bower/bower/blob/master/HOOKS.md

## Copy RequireJS to public theme directory
cp wp-content/themes/manifest-child-theme/bower_components/requirejs/require.js wp-content/themes/manifest-child-theme/assets/js/