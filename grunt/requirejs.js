var config = require( './config' );

module.exports = {

	dev: {
		options: {
			baseUrl: '<%= config.paths.theme %>/js/',
			mainConfigFile: '<%= config.paths.theme %>/js/main.js',
			name: 'main',
			out: '<%= config.paths.theme %>/assets/js/site.js',
			optimize: 'none'
		}
	},
	prod: {
		options: {
			baseUrl: '<%= config.paths.theme %>/js/',
			mainConfigFile: '<%= config.paths.theme %>/js/main.js',
			name: 'main',
			out: '<%= config.paths.theme %>/assets/js/site.min.js',
			preserveLicenseComments: false
		}
	}

};