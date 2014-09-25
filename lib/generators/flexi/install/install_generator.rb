require 'rails/generators'

module Flexi
  module Generators
    class InstallGenerator  < ::Rails::Generators::Base
      desc "This generator installs Twitter Bootstrap to Asset Pipeline"
      source_root File.expand_path("../templates", __FILE__)

      def add_stylesheets
        if File.exist?('app/assets/stylesheets/application.css')
          insert_into_file "app/assets/stylesheets/application.css", " *= require flexi/bootstrap-theme\n", :after => "require_self\n"
          insert_into_file "app/assets/stylesheets/application.css", " *= require flexi/bootstrap\n", :after => "require_self\n"
        else
          copy_file "application.css", "app/assets/stylesheets/application.css"
        end
      end

      def add_javascripts
        if File.exist?('app/assets/javascripts/application.js')
          insert_into_file "app/assets/javascripts/application.js", "//= require flexi/bootstrap\n", :after => "jquery_ujs\n"
        else
          copy_file "application.js", "app/assets/javascripts/application.js"
        end
      end

    end
  end
end