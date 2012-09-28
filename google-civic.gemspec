# encoding: utf-8
require File.expand_path('../lib/google-civic/version', __FILE__)

Gem::Specification.new do |gem|
  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rdiscount'
  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'simplecov'
  gem.add_development_dependency 'yard'
  gem.author      = "Ryan Resella"
  gem.description = %q{TODO: Write a gem description}
  gem.email       = 'ryanresella@gmail.com'
  gem.executables = `git ls-files -- bin/*`.split("\n").map{|f| File.basename(f)}
  gem.files       = `git ls-files`.split("\n")
  gem.homepage    = ''
  gem.name        = 'google-civic'
  gem.require_paths = ['lib']
  gem.summary     = %q{TODO: Write a gem summary}
  gem.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.version     = GoogleCivic::VERSION
end
