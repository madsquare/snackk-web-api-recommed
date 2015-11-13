define [
	'lodash'
], (
	_
) ->

	recommend = 
		server: null

		###
		 * 추천 모듈 init.
		 * @param  {object} server 
		###
		init: (server) ->
			@server = server
			return

		###
		 * 추천 채널 요청.
		 * @param  {int}	page     	페이지 번호.
		 * @param  {int}	limit    	데이터 개수.
		 * @param  {object} callback 	return res, error
		 * @param  {object}	options  	추가로 반환이 필요한 필드.
		 * @return {object} 			ajax
		###
		loadRecommendChannels: (page, limit, callback, options) ->
			if not @server
				console.error 'recommend-module] not initialized server.'
				return
			options = {} if not options

			@server.request @server.TAG.recommend.channels, {
				data: _.assign({ 
					page: page
					limit: limit
					}, options)
				success: (res) =>
					callback.success(res) if callback && callback.success
				error: (er) =>
					callback.error(er) if callback && callback.error
			}

		###
		 * 추천 유저 요청.
		 * @param  {int}	page     	페이지 번호.
		 * @param  {int}	limit    	데이터 개수.
		 * @param  {object} callback 	return res, error
		 * @param  {object}	options  	추가로 반환이 필요한 필드.
		 * @return {object} 			ajax
		###
		loadRecommendUsers: (page, limit, callback, options) ->
			if not @server
				console.error 'recommend-module] not initialized server.'
				return
			options = {} if not options
			@server.request @server.TAG.recommend.users, {
				data: _.assign({ 
					page: page
					limit: limit
					}, options)
				success: (res) =>
					callback.success(res) if callback && callback.success
				error: (er) =>
					callback.error(er) if callback && callback.error
			}

		###
		 * 추천 영상 요청.
		 * @param  {int}	page     	페이지 번호.
		 * @param  {int}	limit    	데이터 개수.
		 * @param  {object} callback 	return res, error
		 * @param  {object}	options  	추가로 반환이 필요한 필드.
		 * @return {object} 			ajax
		###
		loadRecommendResources: (page, limit, callback, options) ->
			if not @server
				console.error 'recommend-module] not initialized server.'
				return
			options = {} if not options
			@server.request @server.TAG.recommend.resources, {
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