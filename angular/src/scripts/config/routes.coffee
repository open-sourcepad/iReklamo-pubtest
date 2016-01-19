angular.module('iReklamo').config ($stateProvider, $urlRouterProvider) ->
  $urlRouterProvider.otherwise '/'

  $stateProvider
    .state 'root',
      url: '/'
      anonymous: true
      views:
        '@':
          templateUrl: "views/app/main/index.html"
          controller: "MainCtrl"
        'content@root':
          templateUrl: "views/app/main/splash.html"

    .state 'root.sign-up',
      url: '^/sign-up'
      anonymous: true
      views:
        'content@root':
          templateUrl: 'views/app/main/sign_up.html'
          controller: "SignupCtrl"

    .state 'root.login',
      url: '^/login'
      anonymous: true,
      views:
        'content@root':
          templateUrl: 'views/app/main/login.html'
          controller: "HomepageCtrl"

    .state 'dashboard',
      data:
        authenticate: false
      templateUrl: 'views/app/main/dashboard.html'

    .state 'dashboard.reklamo',
      url: '^/reklamo'
      data:
        authenticate: false
      views:
        'content@dashboard':
          templateUrl: 'views/reklamo/index.html'
          controller: 'ReklamoCtrl'

    .state 'dashboard.reklamo-detail',
      url: '^/reklamo/:id'
      data:
        authenticate: false
      views:
        'content@dashboard':
          templateUrl: 'views/reklamo/show.html'
          controller: 'ReklamoShowCtrl'
