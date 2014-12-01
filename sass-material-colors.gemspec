# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sass-material-colors/version'

Gem::Specification.new do |spec|
  spec.name          = "sass-material-colors"
  spec.version       = SassMaterialColors::VERSION
  spec.authors       = ["minusfive"]
  spec.email         = ["mail@minusfive.com"]
  spec.summary       = %q{Google's Material Design colors for Sass/Scss}
  spec.description   = %q{An easy way to use Google's Material Design colors in your Sass/Scss project}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.4"
end
