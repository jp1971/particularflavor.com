var config = require( './config' );

module.exports = {

	'css.site': {
		files: [
			'<%= config.paths.theme %>/less/**/*.less',
			'!<%= config.paths.theme %>/less/admin/*.less'
		],
		tasks: [ 'less:site' ],
		options: {
			livereload: true
		}
	},
	'css.admin': {
		files: [ '<%= config.paths.theme %>/less/admin/*.less' ],
		tasks: [ 'less:admin' ],
		options: {
			livereload: true
		}
	},
	'js.site': {
		files: [
			'<%= config.paths.theme %>/js/*.js',
			'<%= config.paths.theme %>/js/**/*.js'
		],
		tasks: [ 'requirejs:dev' ]
	}

};