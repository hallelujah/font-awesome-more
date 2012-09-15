$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "font-awesome-more/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "font-awesome-more"
  s.version     = FontAwesomeMore::VERSION
  s.authors     = ["Ramihajamalala Hery"]
  s.email       = ["hery@rails-royce.org"]
  s.homepage    = "https://github.com/hallelujah/font-awesome-more"
  s.summary     = "Font Awesome More bundled in gem for Ruby on Rails."
  s.description = "Font Awesome More bundled in gem for Ruby on Rails."

  s.rubyforge_project = "font-awesome-more"
  s.files = Dir["lib/**/*"] + Dir["vendor/**/*"] + ["Rakefile", "README.md"]
  s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]


  s.add_dependency 'railties', '>= 3.1'
  s.add_dependency 'actionpack', '>= 3.1'

  if (RUBY_PLATFORM == 'java')
    s.add_dependency 'therubyrhino', '~> 1.73.4'
  else
    s.add_dependency 'therubyracer', '~> 0.10.2'
  end

  s.add_runtime_dependency 'less-rails', '~> 2.2.3'
  s.add_development_dependency 'rails', '>= 3.1'
end
