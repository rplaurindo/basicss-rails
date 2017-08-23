$:.push File.expand_path("../lib", __FILE__)

require "basicss/rails/version"

Gem::Specification.new do |s|
  s.name        = "basicss-rails"
  s.version     = Basicss::Rails::VERSION
  s.authors     = ["rplaurindo"]
  s.email       = ["rafaelplaurindo@gmail.com"]
  s.homepage    = "https://rubygems.org/gems/basicss-rails"
  s.summary     = %q{Summary of Do}
  s.description = %q{It's a lib written in sass that defines standard propridades to the basic structure of HTML, and facilitates the use of sass providing mixins.}
  s.license     = "MIT"
  s.test_files = Dir["test/**/*"]

  s.files = Dir["{bin,config,lib,vendor}/**/*", "MIT-LICENSE", "Rakefile", "README.md", "basicss.gemspec"]
  s.require_paths = %w{lib vendor}

  # needs to work like "rake"
  LAYOUTS_CORE_RUNTIME_DEPENDENCIES = {
  }

  # needs to run a specific task
  LAYOUTS_CORE_DEPENDENCIES = {
    "sass-rails": ">= 0"
  }

  LAYOUTS_CORE_RUNTIME_DEPENDENCIES.each do |pkg, v|
    spec.add_runtime_dependency pkg.to_s, v
  end

  LAYOUTS_CORE_DEPENDENCIES.each do |pkg, v|
    spec.add_development_dependency pkg.to_s, v
  end

end
