require_relative '../base_generator'

module Ng
  class DirectiveGenerator < Rails::Generators::Base
    include BaseGenerator

    def copy_binding_file
      template 'directive.js.coffee.erb',
               "#{module_path}/directives/#{object_file}.js.coffee"
      template 'directive_spec.js.coffee.erb',
               "#{module_spec_path}/directives/#{object_file}_spec.js.coffee"
    end

    def tag_name
      object_name.underscore.dasherize
    end
  end
end
