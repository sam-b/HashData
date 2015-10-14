# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'hashdata'
  spec.version       = '0.0.2'
  spec.authors       = ['Sam Brown']
  spec.email         = ['samdanielbrown@gmail.com']
  spec.summary       = %q{A command line Hash Identifying tool.}
  spec.homepage      = 'https://github.com/sam-b/HashData'
  spec.license       = 'MIT'
  spec.description   = 'A command line hash identifying tool and checking library.'
  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.5'
  spec.add_development_dependency 'rake', '~> 10.1'
  spec.add_development_dependency 'rspec', '~> 3.3.0'
end
