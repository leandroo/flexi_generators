gem "flexi_generators"
run "bundle install"
generate :flexi_prepare
generate :flexi_auth
run "bundle install"
