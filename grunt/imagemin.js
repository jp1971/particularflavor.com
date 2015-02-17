var config = require( './config' );

module.exports = {

	site: {
		files: [ {
			expand: true,
			cwd: config.paths.theme + '/img/',
			src: [ '**/*.{png,jpg,gif}' ],
			dest: config.paths.theme + '/img/'
		} ]
	}

};