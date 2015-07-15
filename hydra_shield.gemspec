$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "hydra_shield/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "hydra_shield"
  s.version     = HydraShield::VERSION
  s.authors     = ["Paul Sadauskas"]
  s.email       = ["psadauskas@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of HydraShield."
  s.description = "TODO: Description of HydraShield."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.2.3"

  s.add_development_dependency "sqlite3"
end