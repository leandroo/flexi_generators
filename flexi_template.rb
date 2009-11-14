# commands
run "rm public/index.html"
run "rm public/favicon.ico"
run "rm README"
run "rm doc/README_FOR_APP"

# plugins
plugin "tabs_helper", :git => "git://github.com/danielvlopes/tabs_helper.git"
plugin "resource_controller", :git => "git://github.com/giraffesoft/resource_controller.git"
plugin "jrails", :git => "git://github.com/aaronchi/jrails.git"
plugin "flexi_generators", :git => "git://github.com/leandroo/flexi_generators.git"

# gems
gem 'mislav-will_paginate', :lib=>'will_paginate', :version=> '2.3.11'

# locales
environment %(config.i18n.default_locale = "pt-BR")

# generators
generate :controller, "home", "index"
generate :flexi_layout
generate :flexi_authentication

# routes
route "map.root :controller => :home"

# tasks
#rake "jrails:js:scrub"
#rake "jrails:js:install"
#rake "db:migrate"