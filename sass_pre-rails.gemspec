Dir["./", "*/"].each{ |p| $:.unshift File.absolute_path(p) unless $:.include?(File.absolute_path(p)) }

require "sass_pre/rails/version"

Gem::Specification.new do |s|
  s.name        = "sass_pre-rails"
  s.version     = SassPre::Rails::VERSION
  s.authors     = ["rplauindo"]
  s.homepage    = "https://bitbucket.org/rplaurindo"
  s.summary     = "Summary of sass_pre-rails"
  s.description = "Description of sass_pre-rails"

  SASS_PRE_REQUIREMENTS = [
    "sass-rails"
  ]

  SASS_PRE_REQUIREMENTS.each do |pkg|
    s.add_dependency pkg
  end

end
