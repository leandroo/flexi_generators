gem "flexi_generators", "0.2.1"
run "bundle install"
generate :flexi_prepare
generate :flexi_auth
run "bundle install"
