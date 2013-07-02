require_relative '../base_generator'

module Ng
  class DirectiveGenerator < Rails::Generators::Base
    include BaseGenerator

    def copy_binding_file
      template 'directive.js.coffee',
               "#{module_path}/directives/#{object_file}.js.coffee"
    end
  end
end
