# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wallpapering/version'

Gem::Specification.new do |gem|
  gem.name          = "wallpapering"
  gem.version       = Wallpapering::VERSION
  gem.authors       = ["Matt House"]
  gem.email         = ["matt@eightbitraptor.com"]
  gem.description   = %q{Wallpapering is a simple decorator pattern implementation}
  gem.summary       = %q{Implements the decorator pattern in Ruby, as simply as possible}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency "rspec"
end
