# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "leonidas"
  s.version = "0.0.10"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Tim Shelburne"]
  s.date = "2013-08-22"
  s.description = ""
  s.email = "shelburt02@gmail.com"
  s.executables = ["leonidas.js"]
  s.extra_rdoc_files = ["CHANGELOG", "LICENSE", "README.md", "bin/leonidas.js", "lib/leonidas.rb", "lib/leonidas/app/app.rb", "lib/leonidas/app/client.rb", "lib/leonidas/app/repository.rb", "lib/leonidas/commands/aggregator.rb", "lib/leonidas/commands/command.rb", "lib/leonidas/commands/filterer.rb", "lib/leonidas/commands/handler.rb", "lib/leonidas/commands/processor.rb", "lib/leonidas/dsl/configuration_expression.rb", "lib/leonidas/memory_layer/memory_registry.rb", "lib/leonidas/patches/time.rb", "lib/leonidas/persistence_layer/persister.rb", "lib/leonidas/persistence_layer/state_builder.rb", "lib/leonidas/persistence_layer/state_loader.rb", "lib/leonidas/routes/console.rb", "lib/leonidas/routes/sync.rb", "lib/leonidas/symbols.rb", "lib/leonidas/views/application.haml", "lib/leonidas/views/client.haml", "lib/leonidas/views/dashboard.haml", "lib/leonidas/views/layout.haml", "lib/leonidas/views/partials/close_form.haml", "lib/leonidas/views/public/images/apple-touch-icon-114x114.png", "lib/leonidas/views/public/images/apple-touch-icon-72x72.png", "lib/leonidas/views/public/images/apple-touch-icon.png", "lib/leonidas/views/public/images/favicon.ico", "lib/leonidas/views/public/stylesheets/base.css", "lib/leonidas/views/public/stylesheets/layout.css", "lib/leonidas/views/public/stylesheets/skeleton.css", "lib/leonidas/views/public/stylesheets/styles.css"]
  s.files = ["CHANGELOG", "Gemfile", "Gemfile.lock", "LICENSE", "Manifest", "README.md", "Rakefile", "assets/scripts/coffee/leonidas/client.coffee", "assets/scripts/coffee/leonidas/commander.coffee", "assets/scripts/coffee/leonidas/commands/command.coffee", "assets/scripts/coffee/leonidas/commands/command_list.coffee", "assets/scripts/coffee/leonidas/commands/handler.coffee", "assets/scripts/coffee/leonidas/commands/organizer.coffee", "assets/scripts/coffee/leonidas/commands/processor.coffee", "assets/scripts/coffee/leonidas/commands/synchronizer.coffee", "assets/scripts/js/lib/reqwest.js", "bin/leonidas.js", "config/assets.rb", "leonidas.gemspec", "lib/leonidas.rb", "lib/leonidas/app/app.rb", "lib/leonidas/app/client.rb", "lib/leonidas/app/repository.rb", "lib/leonidas/commands/aggregator.rb", "lib/leonidas/commands/command.rb", "lib/leonidas/commands/filterer.rb", "lib/leonidas/commands/handler.rb", "lib/leonidas/commands/processor.rb", "lib/leonidas/dsl/configuration_expression.rb", "lib/leonidas/memory_layer/memory_registry.rb", "lib/leonidas/patches/time.rb", "lib/leonidas/persistence_layer/persister.rb", "lib/leonidas/persistence_layer/state_builder.rb", "lib/leonidas/persistence_layer/state_loader.rb", "lib/leonidas/routes/console.rb", "lib/leonidas/routes/sync.rb", "lib/leonidas/symbols.rb", "lib/leonidas/views/application.haml", "lib/leonidas/views/client.haml", "lib/leonidas/views/dashboard.haml", "lib/leonidas/views/layout.haml", "lib/leonidas/views/partials/close_form.haml", "lib/leonidas/views/public/images/apple-touch-icon-114x114.png", "lib/leonidas/views/public/images/apple-touch-icon-72x72.png", "lib/leonidas/views/public/images/apple-touch-icon.png", "lib/leonidas/views/public/images/favicon.ico", "lib/leonidas/views/public/stylesheets/base.css", "lib/leonidas/views/public/stylesheets/layout.css", "lib/leonidas/views/public/stylesheets/skeleton.css", "lib/leonidas/views/public/stylesheets/styles.css", "spec/jasmine/jasmine.yml", "spec/jasmine/runner.html", "spec/jasmine/support/classes.coffee", "spec/jasmine/support/helpers.coffee", "spec/jasmine/support/mocks.coffee", "spec/jasmine/support/objects.coffee", "spec/jasmine/support/requirements.coffee", "spec/jasmine/tests/client_spec.coffee", "spec/jasmine/tests/commander_spec.coffee", "spec/jasmine/tests/commands/command_list_spec.coffee", "spec/jasmine/tests/commands/command_spec.coffee", "spec/jasmine/tests/commands/handler_spec.coffee", "spec/jasmine/tests/commands/organizer_spec.coffee", "spec/jasmine/tests/commands/processor_spec.coffee", "spec/jasmine/tests/commands/synchronizer/synchronizer_pull_spec.coffee", "spec/jasmine/tests/commands/synchronizer/synchronizer_push_spec.coffee", "spec/jasmine/tests/commands/synchronizer/synchronizer_reconcile_spec.coffee", "spec/jasmine/tests/commands/synchronizer/synchronizer_spec.coffee", "spec/rspec/spec_helper.rb", "spec/rspec/support/classes/app.rb", "spec/rspec/support/classes/commands.rb", "spec/rspec/support/classes/persistence.rb", "spec/rspec/support/config.rb", "spec/rspec/support/mocks/sync_requests.rb", "spec/rspec/support/objects.rb", "spec/rspec/unit/app/app_spec.rb", "spec/rspec/unit/app/client_spec.rb", "spec/rspec/unit/app/repository_spec.rb", "spec/rspec/unit/commands/aggregator_spec.rb", "spec/rspec/unit/commands/command_spec.rb", "spec/rspec/unit/commands/filterer_spec.rb", "spec/rspec/unit/commands/handler_spec.rb", "spec/rspec/unit/commands/processor_spec.rb", "spec/rspec/unit/dsl/configuration_expression_spec.rb", "spec/rspec/unit/leonidas_spec.rb", "spec/rspec/unit/memory_layer/memory_registry_spec.rb", "spec/rspec/unit/patches/time_spec.rb", "spec/rspec/unit/persistence_layer/persister_spec.rb", "spec/rspec/unit/persistence_layer/state_loader_spec.rb", "spec/rspec/unit/routes/sync_get_spec.rb", "spec/rspec/unit/routes/sync_post_spec.rb", "spec/rspec/unit/routes/sync_reconcile_spec.rb"]
  s.homepage = "https://github.com/tshelburne/leonidas"
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Leonidas", "--main", "README.md"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "leonidas"
  s.rubygems_version = "1.8.24"
  s.summary = ""

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<jasmine>, [">= 0"])
      s.add_development_dependency(%q<jasmine-headless-webkit>, [">= 0"])
    else
      s.add_dependency(%q<jasmine>, [">= 0"])
      s.add_dependency(%q<jasmine-headless-webkit>, [">= 0"])
    end
  else
    s.add_dependency(%q<jasmine>, [">= 0"])
    s.add_dependency(%q<jasmine-headless-webkit>, [">= 0"])
  end
end
