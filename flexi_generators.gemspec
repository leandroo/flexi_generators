# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{flexi_generators}
  s.version = "0.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Leandro de Oliveira"]
  s.date = %q{2010-10-16}
  s.description = %q{Generates authentication and custom scaffold templates.}
  s.email = %q{ol.leandro@gmail.com}
  s.extra_rdoc_files = [
    "README.textile"
  ]
  s.files = [
    "README.textile",
     "Rakefile",
     "VERSION",
     "flexi_generators.gemspec",
     "init.rb",
     "lib/flexi_generators.rb",
     "lib/generators/flexi_auth/USAGE",
     "lib/generators/flexi_auth/flexi_auth_generator.rb",
     "lib/generators/flexi_auth/templates/authentication.rb",
     "lib/generators/flexi_auth/templates/authlogic_session.rb",
     "lib/generators/flexi_auth/templates/fixtures.yml",
     "lib/generators/flexi_auth/templates/migration.rb",
     "lib/generators/flexi_auth/templates/sessions_controller.rb",
     "lib/generators/flexi_auth/templates/sessions_helper.rb",
     "lib/generators/flexi_auth/templates/tests/testunit/sessions_controller.rb",
     "lib/generators/flexi_auth/templates/tests/testunit/user.rb",
     "lib/generators/flexi_auth/templates/tests/testunit/users_controller.rb",
     "lib/generators/flexi_auth/templates/user.rb",
     "lib/generators/flexi_auth/templates/users_controller.rb",
     "lib/generators/flexi_auth/templates/users_helper.rb",
     "lib/generators/flexi_auth/templates/views/erb/_error_messages.html.erb",
     "lib/generators/flexi_auth/templates/views/erb/edit.html.erb",
     "lib/generators/flexi_auth/templates/views/erb/index.html.erb",
     "lib/generators/flexi_auth/templates/views/erb/login.html.erb",
     "lib/generators/flexi_auth/templates/views/erb/new.html.erb",
     "lib/generators/flexi_auth/templates/views/erb/show.html.erb",
     "lib/generators/flexi_prepare/USAGE",
     "lib/generators/flexi_prepare/flexi_prepare_generator.rb",
     "lib/generators/flexi_prepare/templates/add.png",
     "lib/generators/flexi_prepare/templates/admin_home_controller.rb",
     "lib/generators/flexi_prepare/templates/admin_home_index.html.erb",
     "lib/generators/flexi_prepare/templates/application.css",
     "lib/generators/flexi_prepare/templates/application.html.erb",
     "lib/generators/flexi_prepare/templates/application_helper.rb",
     "lib/generators/flexi_prepare/templates/back.png",
     "lib/generators/flexi_prepare/templates/bg.png",
     "lib/generators/flexi_prepare/templates/bg2.png",
     "lib/generators/flexi_prepare/templates/boxheader.gif",
     "lib/generators/flexi_prepare/templates/btn-bg-hover.png",
     "lib/generators/flexi_prepare/templates/btn-bg.png",
     "lib/generators/flexi_prepare/templates/custom_field_error.rb",
     "lib/generators/flexi_prepare/templates/delete.png",
     "lib/generators/flexi_prepare/templates/edit.png",
     "lib/generators/flexi_prepare/templates/inflector_portuguese.rb",
     "lib/generators/flexi_prepare/templates/login.css",
     "lib/generators/flexi_prepare/templates/login.html.erb",
     "lib/generators/flexi_prepare/templates/logo.png",
     "lib/generators/flexi_prepare/templates/menu.png",
     "lib/generators/flexi_prepare/templates/messages/Thumbs.db",
     "lib/generators/flexi_prepare/templates/messages/error.png",
     "lib/generators/flexi_prepare/templates/messages/info.png",
     "lib/generators/flexi_prepare/templates/messages/success.png",
     "lib/generators/flexi_prepare/templates/messages/tip.png",
     "lib/generators/flexi_prepare/templates/messages/warning.png",
     "lib/generators/flexi_prepare/templates/pt-BR.yml",
     "lib/generators/flexi_prepare/templates/show.png",
     "lib/generators/flexi_prepare/templates/site.css",
     "lib/generators/flexi_prepare/templates/site.html.erb",
     "lib/generators/flexi_prepare/templates/site_controller.rb",
     "lib/generators/flexi_prepare/templates/site_helper.rb",
     "lib/generators/flexi_prepare/templates/site_index.html.erb",
     "lib/generators/flexi_prepare/templates/users.png",
     "lib/generators/flexi_scaffold/USAGE",
     "lib/generators/flexi_scaffold/flexi_scaffold_generator.rb",
     "lib/generators/flexi_scaffold/templates/controller.rb",
     "lib/generators/flexi_scaffold/templates/fixtures.yml",
     "lib/generators/flexi_scaffold/templates/helper.rb",
     "lib/generators/flexi_scaffold/templates/migration.rb",
     "lib/generators/flexi_scaffold/templates/model.rb",
     "lib/generators/flexi_scaffold/templates/tests/controller.rb",
     "lib/generators/flexi_scaffold/templates/tests/helper.rb",
     "lib/generators/flexi_scaffold/templates/tests/model.rb",
     "lib/generators/flexi_scaffold/templates/views/erb/_error_messages.html.erb",
     "lib/generators/flexi_scaffold/templates/views/erb/_form.html.erb",
     "lib/generators/flexi_scaffold/templates/views/erb/edit.html.erb",
     "lib/generators/flexi_scaffold/templates/views/erb/index.html.erb",
     "lib/generators/flexi_scaffold/templates/views/erb/new.html.erb",
     "lib/generators/flexi_scaffold/templates/views/erb/show.html.erb",
     "template.rb"
  ]
  s.homepage = %q{http://github.com/leandroo/flexi_generators}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{My useful Rails generator scripts.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
