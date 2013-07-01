require_relative '../base_generator'

module Ng
  class RoutesGenerator < Rails::Generators::Base
    include BaseGenerator

    def copy_binding_file
      template 'routes.js.coffee',
               "#{module_path}/config/routes.js.coffee"
    end

    def module_parts
      raw_parts.map { |n| n.camelcase(:lower) }
    end
  end
end
