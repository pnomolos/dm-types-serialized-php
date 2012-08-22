# -*- encoding: utf-8 -*-
require File.expand_path('../lib/dm-types-serialized-php/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Phil"]
  gem.email         = ["pnomolos@gmail.com"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "dm-types-serialized-php"
  gem.require_paths = ["lib"]
  gem.version       = Dm::Types::Serialized::Php::VERSION

  gem.add_dependency('php-serialize_ryan')
end
