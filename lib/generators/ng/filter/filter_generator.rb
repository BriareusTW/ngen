require_relative '../base_generator'

module Ng
  class FilterGenerator < Rails::Generators::Base
    include BaseGenerator

    def copy_binding_file
      template 'filter.js.coffee',
               "#{module_path}/filters/#{object_file}.js.coffee"
    end
  end
end
