require File.expand_path(File.dirname(__FILE__) + "/lib/insert_commands.rb")

class FlexiLayoutGenerator < Rails::Generator::Base
  
  def manifest
    record do |m|
      m.directory "app/views/layouts"
      m.directory "public/stylesheets"
      m.directory "public/images"
      m.directory "app/helpers"
      m.directory "app/views/home"
      m.directory "app/views/admin/home"
      m.directory "app/controllers/admin"
      m.template "layout.html.erb", "app/views/layouts/application.html.erb"
      m.template "layout_login.html.erb", "app/views/layouts/login.html.erb"
	  m.template "layout_site.html.erb", "app/views/layouts/site.html.erb"
	  m.template "home_index.html.erb", "app/views/home/index.html.erb"
	  m.template "admin_home_index.html.erb", "app/views/admin/home/index.html.erb"	  
	  m.file     "admin_home_controller.rb", "app/controllers/admin/home_controller.rb"	  
	  m.file     "home_controller.rb", "app/controllers/home_controller.rb"
	  m.file     "home_helper.rb", "app/helpers/home_helper.rb"	  	  	  
      m.file     "stylesheet.css",  "public/stylesheets/application.css"
      m.file     "stylesheet_login.css",  "public/stylesheets/login.css"
	  m.file     "stylesheet_site.css",  "public/stylesheets/site.css"      
      m.file     "logo.png",  "public/images/logo.png"
      m.file     "add.png",  "public/images/add.png"
      m.file     "bg_cinza.png",  "public/images/bg_cinza.png"
      m.file     "helper.rb", "app/helpers/layout_helper.rb"
      m.file     "custom_field_error.rb", "config/initializers/custom_field_error.rb"
      m.file     "inflector_portuguese.rb", "config/initializers/inflector_portuguese.rb"
      m.file     "pt-BR.yml", "config/locales/pt-BR.yml"
      m.route    "map.root :controller => :home"
      m.route    "map.admin 'admin', :controller => 'sessions', :action => 'new'"
      m.route    "map.namespace :admin do |admin|
  	admin.home 'home', :controller => 'home', :action => 'index'
  	admin.resources :users
  end"             
    end
  end
  
  protected

    def banner
      <<-EOS
Creates generic layout, stylesheet, and helper files.

USAGE: #{$0} #{spec.name} [layout_name]
EOS
    end
end
