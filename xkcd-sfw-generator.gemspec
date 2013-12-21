# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'xkcd_sfw_generator/version'

Gem::Specification.new do |spec|
  spec.name          = "xkcd-sfw-generator"
  spec.version       = XkcdSfwGenerator::VERSION
  spec.authors       = ["Ethan Garofolo"]
  spec.email         = ["ethan@bigohstudios.com"]
  spec.description   = %q{An XKCD-inspired phrase generator.}
  spec.summary       = %q{There are number of these, but the let's just say that the wordlists include some possibilities you probably don't want to send to your customers.}
  spec.homepage      = "https://github.com/bigohstudios/xkcd-sfw-generator"
  spec.license       = "MIT"

  spec.files         = ['lib/xkcd_sfw_generator.rb', 'lib/xkcd_sfw_generator/version.rb', 'lib/data/words.txt']
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
