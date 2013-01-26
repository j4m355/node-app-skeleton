nconf = require('nconf')

module.exports = (path) ->
	nconf.use 'file', file: path
	nconf.load()
	nconf
