require 'rails/generators/migration'
require 'rails/generators/generated_attribute'

class FlexiScaffoldGenerator < Rails::Generators::Base
  include Rails::Generators::Migration	
  source_root File.expand_path('../templates', __FILE__)
  
  no_tasks { attr_accessor :model_name, :model_attributes }
  argument :model_name, :type => :string, :required => true, :banner => 'ModelName'
  argument :args_for_m, :type => :array, :default => [], :banner => 'model:attributes'

  def initialize(*args, &block)
    super
    @model_attributes = []

    args_for_m.each do |arg|  
      if arg.include?(':')
        @model_attributes << Rails::Generators::GeneratedAttribute.new(*arg.split(':'))
      end
    end
    
    @model_attributes.uniq!
    
    if @model_attributes.empty?
      if model_exists?
        model_columns_for_attributes.each do |column|
          @model_attributes << Rails::Generators::GeneratedAttribute.new(column.name.to_s, column.type.to_s)
        end
      else
        @model_attributes << Rails::Generators::GeneratedAttribute.new('name', 'string')
      end        	
    end    	
  end 
  
  def create_model
    template 'model.rb', "app/models/#{singular_name}.rb"
    template "tests/model.rb", "test/unit/#{singular_name}_test.rb"
    template 'fixtures.yml', "test/fixtures/#{plural_name}.yml"
  end
  
  def create_controller  
    template "controller.rb", "app/controllers/admin/#{plural_name}_controller.rb"
    inject_into_file "config/routes.rb", "\n\tresources #{plural_name.to_sym.inspect}", :after => 'match "home" => "home#index"'
    template "tests/controller.rb", "test/functional/#{plural_name}_controller_test.rb"
    template 'helper.rb', "app/helpers/#{plural_name}_helper.rb"
    template "tests/helper.rb", "test/unit/helpers/#{plural_name}_controller_test.rb"
  end
  
  def create_view_files
    template "views/erb/index.html.erb", "app/views/admin/#{plural_name}/index.html.erb"
    template "views/erb/_form.html.erb", "app/views/admin/#{plural_name}/_form.html.erb"
    template "views/erb/show.html.erb", "app/views/admin/#{plural_name}/show.html.erb"
    template "views/erb/new.html.erb", "app/views/admin/#{plural_name}/new.html.erb"
    template "views/erb/edit.html.erb", "app/views/admin/#{plural_name}/edit.html.erb"
    template "views/erb/_error_messages.html.erb", "app/views/shared/_error_messages.html.erb"
  end  	

  def create_migration
    migration_template 'migration.rb', "db/migrate/create_#{plural_name}.rb"
  end  

  private
  
  def singular_name
    model_name.underscore
  end
  
  def plural_name
    model_name.underscore.pluralize
  end
  
  def class_name
    model_name.camelize
  end
  
  def plural_class_name
    plural_name.camelize
  end
  
  def model_exists?
    File.exist? destination_path("app/models/#{singular_name}.rb")
  end  

  def model_columns_for_attributes
    class_name.constantize.columns.reject do |column|
      column.name.to_s =~ /^(id|created_at|updated_at)$/
    end
  end

  def self.next_migration_number(dirname) #:nodoc:
    if ActiveRecord::Base.timestamped_migrations
      Time.now.utc.strftime("%Y%m%d%H%M%S")
    else
      "%.3d" % (current_migration_number(dirname) + 1)
    end
  end    
  
end
