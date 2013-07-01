module = angular.module '<%= module_name %>'

module.config ['$routeProvider', '$locationProvider', ($routeProvider, $locationProvider) ->
  r = (resolver) -> [resolver, (service) -> service()]

  $routeProvider
    # .when(path, route)
    #   path: Route path
    #   route:
    #     controller
    #     controllerAs
    #     template
    #     templateUrl
    #     resolve
    #     redirectTo
    #     reloadOnSearch
    #     caseInsensitiveMatch
    # .otherwise(params)
    #   params: Mapping information to be assigned to $route.current

  $locationProvider.html5Mode(true)
]
