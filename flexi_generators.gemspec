# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{flexi_generators}
  s.version = "0.2.9"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Leandro de Oliveira"]
  s.date = %q{2011-04-21}
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
    "lib/generators/flexi.rb",
    "lib/generators/flexi/auth/USAGE",
    "lib/generators/flexi/auth/auth_generator.rb",
    "lib/generators/flexi/auth/templates/authentication.rb",
    "lib/generators/flexi/auth/templates/authlogic_session.rb",
    "lib/generators/flexi/auth/templates/fixtures.yml",
    "lib/generators/flexi/auth/templates/migration.rb",
    "lib/generators/flexi/auth/templates/sessions_controller.rb",
    "lib/generators/flexi/auth/templates/sessions_helper.rb",
    "lib/generators/flexi/auth/templates/tests/testunit/sessions_controller.rb",
    "lib/generators/flexi/auth/templates/tests/testunit/user.rb",
    "lib/generators/flexi/auth/templates/tests/testunit/users_controller.rb",
    "lib/generators/flexi/auth/templates/user.rb",
    "lib/generators/flexi/auth/templates/users_controller.rb",
    "lib/generators/flexi/auth/templates/users_helper.rb",
    "lib/generators/flexi/auth/templates/views/erb/_error_messages.html.erb",
    "lib/generators/flexi/auth/templates/views/erb/_menu.html.erb",
    "lib/generators/flexi/auth/templates/views/erb/application.html.erb",
    "lib/generators/flexi/auth/templates/views/erb/edit.html.erb",
    "lib/generators/flexi/auth/templates/views/erb/index.html.erb",
    "lib/generators/flexi/auth/templates/views/erb/login.html.erb",
    "lib/generators/flexi/auth/templates/views/erb/new.html.erb",
    "lib/generators/flexi/auth/templates/views/erb/show.html.erb",
    "lib/generators/flexi/prepare/USAGE",
    "lib/generators/flexi/prepare/prepare_generator.rb",
    "lib/generators/flexi/prepare/templates/add.png",
    "lib/generators/flexi/prepare/templates/admin_home_controller.rb",
    "lib/generators/flexi/prepare/templates/admin_home_index.html.erb",
    "lib/generators/flexi/prepare/templates/application.css",
    "lib/generators/flexi/prepare/templates/application_helper.rb",
    "lib/generators/flexi/prepare/templates/back.png",
    "lib/generators/flexi/prepare/templates/bg.png",
    "lib/generators/flexi/prepare/templates/bg2.png",
    "lib/generators/flexi/prepare/templates/boxheader.gif",
    "lib/generators/flexi/prepare/templates/btn-bg-hover.png",
    "lib/generators/flexi/prepare/templates/btn-bg.png",
    "lib/generators/flexi/prepare/templates/custom_field_error.rb",
    "lib/generators/flexi/prepare/templates/delete.png",
    "lib/generators/flexi/prepare/templates/edit.png",
    "lib/generators/flexi/prepare/templates/inflector_portuguese.rb",
    "lib/generators/flexi/prepare/templates/login.css",
    "lib/generators/flexi/prepare/templates/login.html.erb",
    "lib/generators/flexi/prepare/templates/logo.png",
    "lib/generators/flexi/prepare/templates/menu.png",
    "lib/generators/flexi/prepare/templates/messages/Thumbs.db",
    "lib/generators/flexi/prepare/templates/messages/error.png",
    "lib/generators/flexi/prepare/templates/messages/info.png",
    "lib/generators/flexi/prepare/templates/messages/success.png",
    "lib/generators/flexi/prepare/templates/messages/tip.png",
    "lib/generators/flexi/prepare/templates/messages/warning.png",
    "lib/generators/flexi/prepare/templates/pt-BR.yml",
    "lib/generators/flexi/prepare/templates/routes.rb",
    "lib/generators/flexi/prepare/templates/show.png",
    "lib/generators/flexi/prepare/templates/site.css",
    "lib/generators/flexi/prepare/templates/site.html.erb",
    "lib/generators/flexi/prepare/templates/site_controller.rb",
    "lib/generators/flexi/prepare/templates/site_helper.rb",
    "lib/generators/flexi/prepare/templates/site_index.html.erb",
    "lib/generators/flexi/prepare/templates/users.png",
    "lib/generators/flexi/scaffold/USAGE",
    "lib/generators/flexi/scaffold/scaffold_generator.rb",
    "lib/generators/flexi/scaffold/templates/controller.rb",
    "lib/generators/flexi/scaffold/templates/fixtures.yml",
    "lib/generators/flexi/scaffold/templates/helper.rb",
    "lib/generators/flexi/scaffold/templates/migration.rb",
    "lib/generators/flexi/scaffold/templates/model.rb",
    "lib/generators/flexi/scaffold/templates/tests/controller.rb",
    "lib/generators/flexi/scaffold/templates/tests/helper.rb",
    "lib/generators/flexi/scaffold/templates/tests/model.rb",
    "lib/generators/flexi/scaffold/templates/views/erb/_error_messages.html.erb",
    "lib/generators/flexi/scaffold/templates/views/erb/_form.html.erb",
    "lib/generators/flexi/scaffold/templates/views/erb/edit.html.erb",
    "lib/generators/flexi/scaffold/templates/views/erb/index.html.erb",
    "lib/generators/flexi/scaffold/templates/views/erb/new.html.erb",
    "lib/generators/flexi/scaffold/templates/views/erb/show.html.erb",
    "template.rb"
  ]
  s.homepage = %q{http://github.com/leandroo/flexi_generators}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.7.2}
  s.summary = %q{My useful Rails generator scripts.}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end

