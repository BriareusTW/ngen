module Ng
  module BaseGenerator
    def self.included(base)
      base.class_eval do
        source_root File.expand_path('../templates', __FILE__)

        argument :raw_name, type: :string
      end
    end

    def raw_parts
      raw_name.split('/')
    end

    def module_parts
      raw_parts[0...-1].map { |n| n.camelcase(:lower) }
    end

    def object_part
      raw_parts[-1].camelcase(:lower)
    end

    def module_name
      module_parts.join('.')
    end

    def object_name
      object_part
    end

    def object_file
      object_part.underscore
    end

    def full_name
      "#{module_name}.#{object_name}"
    end

    def module_path
      module_dirname = module_parts.map(&:underscore).join('-')
      "app/assets/javascripts/#{module_dirname}"
    end

    def module_spec_path
      module_dirname = module_parts.map(&:underscore).join('-')
      "spec/javascripts/#{module_dirname}"
    end
  end
end
