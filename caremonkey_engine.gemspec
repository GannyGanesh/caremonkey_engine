# Provide a simple gemspec so you can easily use your enginex
# project in your rails apps through git.
# CURRENT FILE :: caremonkey_engine.gemspec
require File.expand_path("../lib/caremonkey_engine/version", __FILE__)

# Provide a simple gemspec so that you can easily use your
# Enginex project in your Rails apps through Git.
Gem::Specification.new do |s|
  s.name                      = "caremonkey_engine"
  s.version                   = Caremonkey::VERSION
  s.platform                  = Gem::Platform::RUBY
  s.authors                   = [ "Parthiban" ]
  s.email                     = [ "parthiban@railsfactory.org" ]
  s.homepage                  = "http://caremonkey.heroku.com"
  s.description               = "A simple Rails 3 engine gem that adds a team page to any Rails 3 application."
  s.summary                   = "caremonkey_engine-#{s.version}"
  s.files = Dir["{app,lib,config}/**/*"] + ["MIT-LICENSE", "Gemfile", "README.rdoc"]
  s.rubyforge_project         = "caremonkey"
  s.required_rubygems_version = "> 1.8.21"

  s.add_dependency "activesupport" , "~> 3.1.3"
  s.add_dependency "rails"         , "~> 3.1.3"

  s.files = `git ls-files`.split("\n")
  s.executables = `git ls-files`.split("\n").map{|f| f =~ /^bin\/(.*)/ ? $1 : nil}.compact
  s.require_path = 'lib'
end
