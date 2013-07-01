require_relative '../base_generator'

module Ng
  class ServiceGenerator < Rails::Generators::Base
    include BaseGenerator

    def copy_binding_file
      template 'service.js.coffee',
               "#{module_path}/services/#{object_file}.js.coffee"
    end
  end
end
