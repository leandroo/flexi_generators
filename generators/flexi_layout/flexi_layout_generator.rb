class FlexiLayoutGenerator < Rails::Generator::Base
  
  def manifest
    record do |m|
      m.directory 'app/views/layouts'
      m.directory 'public/stylesheets'
      m.directory 'public/images'
      m.directory 'app/helpers'
      m.template "layout.html.erb", "app/views/layouts/application.html.erb"
      m.template "layout_login.html.erb", "app/views/layouts/login.html.erb"
      m.file     "stylesheet.css",  "public/stylesheets/application.css"
      m.file     "stylesheet_login.css",  "public/stylesheets/login.css"
      m.file     "logo.png",  "public/images/logo.png"
      m.file     "bg_cinza.png",  "public/images/bg_cinza.png"
      m.file     "helper.rb", "app/helpers/layout_helper.rb"
      m.file     "custom_field_error.rb", "config/initializers/custom_field_error.rb"
      m.file     "inflector_portuguese.rb", "config/initializers/inflector_portuguese.rb"
      m.file     "pt-BR.yml", "config/locales/pt-BR.yml"
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
