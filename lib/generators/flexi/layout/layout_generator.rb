require 'rails/generators'

module Flexi
  module Generators
    class LayoutGenerator  < ::Rails::Generators::Base
      desc "This generator generates layout file with navigation."
      source_root File.expand_path("../templates", __FILE__)
      
      argument :layout_name, :type => :string, :default => "application"
      argument :dashboard_name, :type => :string, :default => "dashboard"
      attr_reader :app_name, :container_class

      def generate_layout
        app = ::Rails.application
        @app_name = app.class.to_s.split("::").first
        remove_file "app/views/layouts/#{layout_name}.html.erb"
        template "layout.html.erb", "app/views/layouts/#{layout_name}.html.erb"
        generate "controller", "#{dashboard_name} index"
        remove_file "app/views/#{dashboard_name}/index.html.erb"
        copy_file "#{dashboard_name}.html.erb", "app/views/dashboard/index.html.erb"
        route "root :to => '#{dashboard_name}#index'"
      end

      def add_stylesheets
        copy_file 'layout.css', 'app/assets/stylesheets/layout.css'
        if File.exist?('app/assets/stylesheets/application.css')
          gsub_file "app/assets/stylesheets/application.css", " *= require_tree .\n", ""
          insert_into_file "app/assets/stylesheets/application.css", " *= require layout\n", :after => "bootstrap-theme\n"
        else
          copy_file "application.css", "app/assets/stylesheets/application.css"
        end
      end

      def copy_additional_files
        copy_file 'layout_helper.rb', 'app/helpers/layout_helper.rb'
        copy_file 'error_messages_helper.rb', 'app/helpers/error_messages_helper.rb'
        copy_file '_flash.html.erb', 'app/views/shared/_flash.html.erb'
        template '_sidebar.html.erb', 'app/views/layouts/_sidebar.html.erb'
        template '_navbar.html.erb', 'app/views/layouts/_navbar.html.erb'
        copy_file '_user_dropdown.html.erb', 'app/views/layouts/_user_dropdown.html.erb'
      end

    end
  end
end
