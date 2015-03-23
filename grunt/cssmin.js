var config = require( './config' );

module.exports = {

	site: {
		files: [ {
			expand: true,
			cwd: '<%= config.paths.theme %>/assets/css/',
			src: [ '*.css', '!*.min.css' ],
			dest: '<%= config.paths.theme %>/assets/css/',
			ext: '.min.css'
		} ],
		options : {
			keepSpecialComments: '0'
		}
	}

};