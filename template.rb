gem "flexi_generators", "0.2.10"
run "bundle install"
generate 'flexi:prepare'
generate 'flexi:auth'
run "bundle install"