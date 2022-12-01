

// Added by the Spring Security Core plugin:

grails.plugin.springsecurity.auth.loginFormUrl = '/login/auth'

grails.plugin.springsecurity.userLookup.userDomainClassName = 'com.mbds.emsi.User'
grails.plugin.springsecurity.userLookup.authorityJoinClassName = 'com.mbds.emsi.UserRole'
grails.plugin.springsecurity.authority.className = 'com.mbds.emsi.Role'
grails.plugin.springsecurity.logout.postOnly=false
grails.plugin.springsecurity.controllerAnnotations.staticRules = [
<<<<<<< HEAD
	[pattern: '/',               access: ['permitAll']],
=======
	[pattern: '/**',               access: ['permitAll']],
>>>>>>> 4fb585b (Annonce : -lister les annonces)
	[pattern: '/error',          access: ['permitAll']],
	[pattern: '/index',          access: ['permitAll']],

	[pattern: '/index.gsp',      access: ['permitAll']],
	[pattern: '/shutdown',       access: ['permitAll']],
	[pattern: '/assets/**',      access: ['permitAll']],
	[pattern: '/**/js/**',       access: ['permitAll']],
	[pattern: '/**/css/**',      access: ['permitAll']],
	[pattern: '/**/images/**',   access: ['permitAll']],
	[pattern: '/**/favicon.ico', access: ['permitAll']]
]

grails.plugin.springsecurity.filterChain.chainMap = [
	[pattern: '/assets/**',      filters: 'none'],
	[pattern: '/**/js/**',       filters: 'none'],
	[pattern: '/**/css/**',      filters: 'none'],
	[pattern: '/**/images/**',   filters: 'none'],
	[pattern: '/**/favicon.ico', filters: 'none'],
	[pattern: '/**',             filters: 'JOINED_FILTERS']
]
