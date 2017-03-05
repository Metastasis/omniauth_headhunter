# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'omniauth-headhunter/version'

Gem::Specification.new do |gem|
  gem.name          = "omniauth-headhunter"
  gem.version       = OmniAuth::HeadHunter::VERSION
  gem.authors       = ["Metastasis"]
  gem.email         = ["metastasis@protonmail.ch"]
  gem.description   = %q{OmniAuth (OAuth 2) strategy for hh.ru}
  gem.summary       = %q{OmniAuth HeadHunter (OAuth 2) strategy for hh.ru}
  gem.homepage      = "https://github.com/metastasis/omniauth-headhunter"
  gem.license      = "MIT"

  gem.add_runtime_dependency     'omniauth-oauth2', '~> 1.2'
  gem.add_development_dependency 'rack-test'
  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'rspec-its'
  # gem.add_dependency             'multi_json'
  # gem.add_development_dependency 'webmock'

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.require_paths = ["lib"]
end
