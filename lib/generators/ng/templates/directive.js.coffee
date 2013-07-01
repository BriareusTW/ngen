module = angular.module '<%= module_name %>'

module.directive '<%= object_name %>', [->
  # name: '<%= object_name %>'
  # priority: 0
  # terminal: false
  # scope: null
  # controller: null
  # require: null
  # restrict: 'EACM'
  # template: ''
  # templateUrl: ''
  # replace: false
  # transclude: false
  # compile: (tElement, tAttrs, transclude) ->
  #   pre: (scope, iElement, iAttrs, controller) ->
  #   post: (scope, iElement, iAttrs, controller) ->
  # link: (scope, iElement, iAttrs, controller) ->
]

document.createElement('<%= object_name.underscore.dasherize %>')
