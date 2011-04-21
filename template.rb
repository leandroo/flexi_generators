# Check prerequisites
%w{bundler flexi_generators}.each do |component|
  unless Gem.available?(component)
    run "gem install #{component}"
    Gem.refresh
    Gem.activate(component)
  end
end
# Add flexi_generators to Gemfile
gem "flexi_generators"
# Flexi Genertors
generate :flexi:prepare
generate :flexi:auth
# Bundle
run "bundle install"