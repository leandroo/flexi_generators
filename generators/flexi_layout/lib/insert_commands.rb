Rails::Generator::Commands::Create.class_eval do
  def route(route)
    sentinel = 'ActionController::Routing::Routes.draw do |map|'
    
    logger.route "#{route}"
    unless options[:pretend]
      gsub_file 'config/routes.rb', /(#{Regexp.escape(sentinel)})/mi do |match|
        "#{match}\n  #{route}"
      end
    end
  end
end

Rails::Generator::Commands::Destroy.class_eval do  
  def route_name(route)
    look_for =   "\n  #{route}"
    logger.route "#{route}"
    unless options[:pretend]
      gsub_file    'config/routes.rb', /(#{look_for})/mi, ''
    end
  end
end

Rails::Generator::Commands::List.class_eval do
  def route(route)
    logger.route "{route}"
  end
end
