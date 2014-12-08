# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "weather_underground/version"

Gem::Specification.new do |s|
  s.name        = "weather_underground"
  s.version     = WeatherUnderground::VERSION
  s.authors     = ["Chris Oliver"]
  s.email       = ["excid3@gmail.com"]
  s.homepage    = "https://github.com/excid3/weather_underground"
  s.summary     = %q{A Ruby gem for the Weather Underground API}
  s.description = %q{A Ruby gem for the Weather Underground API}

  s.rubyforge_project = "weather_underground"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  s.add_runtime_dependency "rest-client", "~> 1.6.7"
  s.add_runtime_dependency "json", "~> 1.7", ">= 1.7.7"
end
