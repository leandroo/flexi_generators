plugin "rails-footnotes", :git => "git://github.com/josevalim/rails-footnotes.git"
gem "flexi_generators", "=0.2.0"
run "bundle install"
generate :flexi_prepare
generate :flexi_auth

