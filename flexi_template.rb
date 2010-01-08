# commands
run "rm public/index.html"
run "rm public/favicon.ico"
run "rm README"
run "rm doc/README_FOR_APP"

# plugins
plugin "tabs_helper", :git => "git://github.com/danielvlopes/tabs_helper.git"
plugin "resource_controller", :git => "git://github.com/jamesgolick/resource_controller.git"
plugin "jrails", :git => "git://github.com/aaronchi/jrails.git"
plugin "flexi_generators", :git => "git://github.com/leandroo/flexi_generators.git"

# gems
gem 'will_paginate', :version=> '2.3.11', :source => 'http://gemcutter.org'

# locales
environment %(config.i18n.default_locale = "pt-BR")

# generators
generate :flexi_layout
generate :flexi_authentication

# tasks
#rake 'gems:install', :sudo => true
#rake 'gems:unpack', :sudo => true
#rake 'jrails:js:scrub'
#rake 'jrails:js:install'
#rake 'db:migrate'
