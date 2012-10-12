$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'crowdblog/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'crowdblog'
  s.version     = Crowdblog::VERSION
  s.authors     = ['Crowd Interactive', 'David Padilla', 'Chalo Fernandez', 'Ignacio Galindo', 'Nora Alvarado']
  s.email       = %w(opensource@crowdint.com david@crowdint.com chalofa@crowdint.com ignacio@crowdint.com nora@crowdint.com)
  s.homepage    = 'http://github.com/crowdint/crowdblog'
  s.summary     = 'CrowdBlog base functionality and backend'
  s.description = 'This mountable engine has the basic functionality to manage Posts'

  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths = %w(lib app)

  s.add_dependency 'rails', '~> 3.2'

  # Added in the Gemfile, so they can be accessed in the dummy app
  #   leave the dependencies here so our engine require those gems when added on base apps
  s.add_dependency 'carrierwave'
  s.add_dependency 'devise'
  s.add_dependency 'gravtastic'
  s.add_dependency 'jquery-rails'
  s.add_dependency 'jbuilder'
  s.add_dependency 'redcarpet'
  s.add_dependency 'slim'
  s.add_dependency 'state_machine'
  s.add_dependency 'strong_parameters'

  s.add_development_dependency 'autotest'
  s.add_development_dependency 'autotest-growl'
  s.add_development_dependency 'capybara-webkit'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'fuubar'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'simplecov-rcov-text'
  s.add_development_dependency 'sqlite3'
end
