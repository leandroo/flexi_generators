require 'generators/flexi'
require 'rails/generators/migration'

module Flexi
  module Generators
    class AuthGenerator < Base
	  include Rails::Generators::Migration
   
      argument :user_name, :type => :string, :default => 'user', :banner => 'user_name'
      argument :session_name, :type => :string, :default => "user_session", :banner => 'sessions_controller_name'
      
      def generate_auth
        gem 'authlogic', :git => 'git://github.com/binarylogic/authlogic.git'   	
      end
  
      def create_model_files
       template 'user.rb', "app/models/#{user_singular_name}.rb"
       template 'authlogic_session.rb', "app/models/#{user_singular_name}_session.rb"
      end

      def create_controller_files
        template 'users_controller.rb', "app/controllers/admin/#{user_plural_name}_controller.rb"
        template 'sessions_controller.rb', "app/controllers/#{session_plural_name}_controller.rb"
      end

	  def create_helper_files
	    template 'users_helper.rb', "app/helpers/#{user_plural_name}_helper.rb"
	    template 'sessions_helper.rb', "app/helpers/#{session_plural_name}_helper.rb"
	  end

	  def create_view_files
	    template "views/erb/login.html.erb", "app/views/#{session_plural_name}/new.html.erb"
	    template "views/erb/index.html.erb", "app/views/admin/#{user_plural_name}/index.html.erb"
	    template "views/erb/show.html.erb", "app/views/admin/#{user_plural_name}/show.html.erb"
	    template "views/erb/new.html.erb", "app/views/admin/#{user_plural_name}/new.html.erb"
	    template "views/erb/_error_messages.html.erb", "app/views/shared/_error_messages.html.erb"
	    template "views/erb/edit.html.erb", "app/views/admin/#{user_plural_name}/edit.html.erb"
	    template "views/erb/application.html.erb", "app/views/layouts/application.html.erb"
	    template "views/erb/_menu.html.erb", "app/views/layouts/_menu.html.erb"
	  end

	  def create_lib_files
	    template 'authentication.rb', 'config/initializers/authentication.rb'
	  end

	  def create_routes
	  	route "match 'admin' => '#{session_plural_name}#new'"
	    route "match 'login' => '#{session_plural_name}#new', :as => :login"
	    route "match 'logout' => '#{session_plural_name}#destroy', :as => :logout"
	    route "resources #{session_plural_name.to_sym.inspect}"
	    inject_into_file "config/routes.rb", "\n\tresources #{user_plural_name.to_sym.inspect}", :after => 'match "home" => "home#index"'
	  end
      
	  def create_include_line
	    inject_into_class "app/controllers/application_controller.rb", "ApplicationController", "  before_filter :login_required\n"
	    inject_into_class "app/controllers/application_controller.rb", "ApplicationController", "  include Authentication\n"
	  end
  
	  def create_test_files
	    template 'fixtures.yml', "test/fixtures/#{user_plural_name}.yml"
	    template "tests/testunit/user.rb", "test/unit/#{user_singular_name}_test.rb"
	    template "tests/testunit/users_controller.rb", "test/functional/#{user_plural_name}_controller_test.rb"
	    template "tests/testunit/sessions_controller.rb", "test/functional/#{session_plural_name}_controller_test.rb"
	  end 

	  def create_migration
	    migration_template 'migration.rb', "db/migrate/create_#{user_plural_name}.rb"
	  end
  
	  def create_seed
	  	append_file "db/seeds.rb","#{user_class_name}.create(:username => 'admin', :password => 'admin123', :password_confirmation => 'admin123', :email => 'admin@example.com')"	
	  end  

	  private
	  
	  def session_name
	    user_name + '_session'
	  end   
	  
	  def user_singular_name
	    user_name.underscore
	  end
	
	  def user_plural_name
	    user_singular_name.pluralize
	  end
	
	  def user_class_name
	    user_name.camelize
	  end
	
	  def user_plural_class_name
	    user_plural_name.camelize
	  end
	
	  def session_singular_name
	    session_name.underscore
	  end
	
	  def session_plural_name
	    session_singular_name.pluralize
	  end
	
	  def session_class_name
	    session_name.camelize
	  end
	
	  def session_plural_class_name
	    session_plural_name.camelize
	  end
	
	  def self.next_migration_number(dirname) #:nodoc:
	    if ActiveRecord::Base.timestamped_migrations
	      Time.now.utc.strftime("%Y%m%d%H%M%S")
	    else
	      "%.3d" % (current_migration_number(dirname) + 1)
	    end
	  end
	      
    end	  
  end     
end