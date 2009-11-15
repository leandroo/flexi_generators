class Create<%= user_plural_class_name %> < ActiveRecord::Migration
  def self.up
    create_table :<%= user_plural_name %> do |t|
      t.string :username
      t.string :email
    <%- if options[:authlogic] -%>
      t.string :persistence_token
      t.string :crypted_password
    <%- else -%>
      t.string :password_hash
    <%- end -%>
      t.string :password_salt
      t.timestamps
    end
    
    <%- if options[:authlogic] -%>
      # ...
	<%- else -%>	    	
	execute "INSERT INTO <%= user_plural_name %> (username,email,password_hash,password_salt) VALUES ('admin','admin@admin.com','3dad6da7754a5de4c3d46fc3901adf1a1ae9ce18','4207a4c0006e0b01da91693066d91a5e34fa7fb9')"
	  puts ""
	  puts "Username: admin"
	  puts "Password: admin123"
	  puts ""
    <%- end -%>	
  end
  
  def self.down
    drop_table :<%= user_plural_name %>
  end
end
