require 'rails/generators'

module Flexi
  module Generators
    class ConfigGenerator  < ::Rails::Generators::Base    	
      desc "This generator sets to my default settings"
      source_root File.expand_path("../templates", __FILE__)

      def config_app
        remove_file "public/index.html"

        copy_file "pt-BR.yml", "config/locales/pt-BR.yml"
        copy_file "inflector_portuguese.rb", "config/initializers/inflector_portuguese.rb"
        copy_file "field_error.rb", "config/initializers/field_error.rb"
        copy_file "will_paginate.rb", "config/initializers/will_paginate.rb"

        inject_into_class "config/application.rb", "Application","\tconfig.i18n.default_locale = 'pt-BR'\n"
        inject_into_class "config/application.rb", "Application","\tconfig.time_zone = 'Brasilia'\n"

        gem 'will_paginate', '~> 3.0'
        gem 'nokogiri'
      end

    end
  end
end