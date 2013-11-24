# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'date_diff/version'

Gem::Specification.new do |spec|
  spec.name          = "date_diff"
  spec.version       = DateDiff::VERSION
  spec.authors       = ["nithin stany dsouza"]
  spec.email         = ["nithinstany@gmail.com"]
  spec.description   = %q{How many years, months and days are there between two dates}
  spec.summary       = %q{How many years, months and days are there between two dates}
  spec.homepage      = "https://github.com/nithinstany/date_diff"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "activesupport"
  spec.add_development_dependency "i18n"
  if RUBY_VERSION == "1.8.7"
      s.add_development_dependency 'minitest', '3.2.0'
  end  
end
