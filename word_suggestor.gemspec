# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'word_suggestor/version'

Gem::Specification.new do |gem|
  gem.name          = "word_suggestor"
  gem.version       = WordSuggestor::VERSION
  gem.authors       = ["simplay"]
  gem.email         = ["silent.simplay@gmail.com"]
  gem.description   = %q{Find the best matching string}
  gem.summary       = %q{Compare strings using the levenshtein distance.}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  
  gem.add_development_dependency "rspec"
end


