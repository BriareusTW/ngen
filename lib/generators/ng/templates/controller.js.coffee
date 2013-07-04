module = angular.module '<%= module_name %>'

module.controller '<%= object_name.camelize %>', [<%= quoted_services %>, (<%= unquoted_services %>) ->
]
