# -*- encoding: utf-8 -*-
Gem::Specification.new do |gem|
  gem.authors       = ["Phil"]
  gem.email         = ["pnomolos@gmail.com"]
  gem.description   = %q{Provides supports for a field stored as a serialized PHP string}
  gem.summary       = %q{Provides supports for a field stored as a serialized PHP string}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "dm-types-serialized-php"
  gem.require_paths = ["lib"]
  gem.version       = '0.0.1'


  %w[dm-core dm-types php-serialize_ryan].each do |gemname|
    gem.add_dependency(gemname)
  end
end
