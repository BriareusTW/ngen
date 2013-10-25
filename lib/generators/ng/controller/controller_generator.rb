require_relative '../base_generator'

module Ng
  class ControllerGenerator < Rails::Generators::Base
    include BaseGenerator

    def copy_binding_file
      template 'controller.js.coffee.erb',
               "#{module_path}/controllers/#{object_file}.js.coffee"
    end

    def services
      @services ||= ['$scope'] + @args
    end
  end
end
