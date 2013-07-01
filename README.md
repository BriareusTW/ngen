# Ngen

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'ngen', github: 'ayamomiji/ngen'

And then execute:

    $ bundle

## Usage

    rails generate ng:module     module_namespace/module_name
    rails generate ng:routes     module_namespace/module_name
    rails generate ng:service    module_namespace/module_name/service_name
    rails generate ng:directive  module_namespace/module_name/directive_name
    rails generate ng:controller module_namespace/module_name/controller_name [service1 service2 service3 ...]
    rails generate ng:filter     module_namespace/module_name/filter_name

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
