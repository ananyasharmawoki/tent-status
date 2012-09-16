# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tent-statusapp/version'

Gem::Specification.new do |gem|
  gem.name          = "tent-statusapp"
  gem.version       = Tent::Statusapp::VERSION
  gem.authors       = ["Jesse Stuart"]
  gem.email         = ["jessestuart@gmail.com"]
  gem.description   = %q{Tent app for 140 character posts. Uses Sinatra/Sprockets + CoffeeScript}
  gem.summary       = %q{Tent app for 140 character posts}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_runtime_dependency 'tent-client'

  gem.add_runtime_dependency 'puma'
  gem.add_runtime_dependency 'sinatra'
  gem.add_runtime_dependency 'rack_csrf'

  gem.add_runtime_dependency 'data_mapper', '~> 1.2.0'
  gem.add_runtime_dependency 'dm-postgres-adapter', '~> 1.2.0'

  gem.add_runtime_dependency 'sprockets', '~> 2.0'
  gem.add_runtime_dependency 'tilt'
  gem.add_runtime_dependency 'sass'
  gem.add_runtime_dependency 'coffee-script'
  gem.add_runtime_dependency 'slim'
  gem.add_runtime_dependency 'uglifier'
  gem.add_runtime_dependency 'hogan_assets'
  gem.add_runtime_dependency 'asset_sync'
  gem.add_runtime_dependency 'hashie'

  gem.add_development_dependency 'sinatra-contrib'
  gem.add_development_dependency 'poltergeist'
  gem.add_development_dependency 'evergreen'
  gem.add_development_dependency 'kicker'
end