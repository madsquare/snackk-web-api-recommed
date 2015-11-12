define [
	'lodash'
], (
	_
) ->

	recommend = 
		server: null

		init: (server) ->
			@server = server

		loadRecommendChannels: (page, limit, callback, options) ->
			if not @server
				console.error 'recommend-module] not initialized server.'
				return
			options = {} if not options

			# TODO url 변경.
			@server.request '/search/recommend/channels', {
				data: _.assign({ 
					page: page
					limit: limit
					}, options)
				success: (res) =>
					callback.success(res) if callback && callback.success
				error: (er) =>
					callback.error(er) if callback && callback.error
			}


		loadRecommendUsers: (page, limit, callback, options) ->
			if not @server
				console.error 'recommend-module] not initialized server.'
				return
			options = {} if not options
			# TODO url 변경.
			@server.request '/search/recommend/users', {
				data: _.assign({ 
					page: page
					limit: limit
					}, options)
				success: (res) =>
					callback.success(res) if callback && callback.success
				error: (er) =>
					callback.error(er) if callback && callback.error
			}


		loadRecommendResources: (page, limit, callback, options) ->
			if not @server
				console.error 'recommend-module] not initialized server.'
				return
			options = {} if not options
			# TODO url 변경.
			@server.request '/search/recommend/resources', {
				data: _.assign({ 
					page: page
					limit: limit
					}, options)
				success: (res) =>
					callback.success(res) if callback && callback.success
				error: (er) =>
					callback.error(er) if callback && callback.error
			}

	return recommend