var config = require( './config' );

module.exports = {

	site: {
		files: {
			'<%= config.paths.theme %>/assets/css/<%= config.project %>.css': '<%= config.paths.theme %>/less/app/<%= config.project %>-bootstrap.less'
		}
	}

};