require 'rails/generators/rails/scaffold/scaffold_generator'
require 'rails/generators/erb/scaffold/scaffold_generator'
require 'rails/generators/rails/scaffold_controller/scaffold_controller_generator'

module Flexi
  module Generators
    class ScaffoldGenerator < Rails::Generators::ScaffoldGenerator
      remove_hook_for :stylesheet_engine

      def insert_menu
        if File.exist?('app/views/layouts/_navbar.html.erb')
          insert_into_file "app/views/layouts/_navbar.html.erb", "    <%= menu('#{plural_table_name.titleize}', #{plural_table_name}_path) %>\n", :after => "<ul class=\"nav\">\n"  
        end
      end

    end
  end
end

module Erb
  module Generators
    class ScaffoldGenerator
      source_root File.expand_path("../templates", __FILE__)
    end
  end
end

module Rails
  module Generators
    class ScaffoldControllerGenerator
      source_root File.expand_path("../templates", __FILE__)
    end
  end
end