# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sku_generator/version'

Gem::Specification.new do |spec|
  spec.name          = "sku_generator"
  spec.version       = SkuGenerator::VERSION
  spec.authors       = ["Pavan Agrawal"]
  spec.email         = ["pavan.agrawala@gmail.com"]
  spec.summary       = %q{This toll will generate sku (stock keeping unit) for e-commerce application}
  spec.description   = %q{It takes the advantage of models and its associations to make it decodable unique over the application.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
