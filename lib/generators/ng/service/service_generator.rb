require_relative '../base_generator'

module Ng
  class ServiceGenerator < Rails::Generators::Base
    include BaseGenerator

    def copy_binding_file
      template 'service.js.coffee.erb',
               "#{module_path}/services/#{object_file}.js.coffee"
      template 'service_spec.js.coffee.erb',
               "#{module_spec_path}/services/#{object_file}_spec.js.coffee"
    end
  end
end
