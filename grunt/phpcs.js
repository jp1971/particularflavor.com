var config = require( './config' );

module.exports = {

	site: {
		dir: [
			config.paths.theme + '/*.php',
			config.paths.theme + '/**/*.php',
			'!' + config.paths.theme + '/vendor/**/*.*'
		]
	},
	options: {
		bin: 'vendor/bin/phpcs',
		standard: 'WordPress'
	}

};