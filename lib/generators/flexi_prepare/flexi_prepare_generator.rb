class FlexiPrepareGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)
  
  def generate_flexi_prepare
  	remove_file "app/views/layouts/application.html.erb"
  	remove_file "app/helpers/application_helper.rb"
  	remove_file "public/index.html"
  	remove_file "config/routes.rb"
  
    copy_file "pt-BR.yml", "config/locales/pt-BR.yml"
    copy_file "inflector_portuguese.rb", "config/initializers/inflector_portuguese.rb"	
    copy_file "custom_field_error.rb", "config/initializers/custom_field_error.rb"
    copy_file "application.css",  "public/stylesheets/application.css"
    copy_file "login.css",  "public/stylesheets/login.css"
	copy_file "site.css",  "public/stylesheets/site.css"    
    copy_file "logo.png", "public/images/logo.png"
    copy_file "add.png", "public/images/add.png" 
    copy_file "bg.png", "public/images/bg.png" 
    copy_file "bg2.png", "public/images/bg2.png" 
    copy_file "users.png", "public/images/users.png" 
    copy_file "boxheader.gif", "public/images/boxheader.gif"
    copy_file "menu.png", "public/images/menu.png"
    copy_file "btn-bg.png", "public/images/btn-bg.png"
    copy_file "btn-bg-hover.png", "public/images/btn-bg-hover.png"
    copy_file "edit.png", "public/images/edit.png"
    copy_file "show.png", "public/images/show.png"
    copy_file "delete.png", "public/images/delete.png"
    copy_file "back.png", "public/images/back.png"
    copy_file "messages/error.png", "public/images/messages/error.png"
    copy_file "messages/info.png", "public/images/messages/info.png"
    copy_file "messages/success.png", "public/images/messages/success.png"
    copy_file "messages/tip.png", "public/images/messages/tip.png"
    copy_file "messages/warning.png", "public/images/messages/warning.png"
	copy_file "admin_home_controller.rb", "app/controllers/admin/home_controller.rb"	  
	copy_file "site_controller.rb", "app/controllers/site_controller.rb"
	copy_file "site_helper.rb", "app/helpers/site_helper.rb"
	copy_file "application_helper.rb", "app/helpers/application_helper.rb"	  	  	         
	
    template "routes.rb", "config/routes.rb"
    template "login.html.erb", "app/views/layouts/login.html.erb"
	template "site.html.erb", "app/views/layouts/site.html.erb"
	template "site_index.html.erb", "app/views/site/index.html.erb"
	template "admin_home_index.html.erb", "app/views/admin/home/index.html.erb"
	
	gem 'menu_builder', '=0.3.3'
	gem 'will_paginate', '~> 3.0.pre2'

	route 'root :to => "site#index"'
	route 'namespace :admin do
    match "home" => "home#index"
  end'	
  
    inject_into_file "config/application.rb", "\tconfig.i18n.default_locale = 'pt-BR'\n", :after => "class Application < Rails::Application\n"
    inject_into_file "config/application.rb", "\tconfig.time_zone = 'Brasilia'\n", :after => "class Application < Rails::Application\n"    
  end
    
  private 
  
  def app_name
  	File.basename(Rails.root).camelize
  end	
end