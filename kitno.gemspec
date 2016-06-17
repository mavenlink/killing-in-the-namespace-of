# coding: utf-8
#
lib = File.expand_path('../lib', __FILE__)

$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'kitno/version'

Gem::Specification.new do |spec|
  spec.name          = 'kitno'
  spec.version       = Kitno::VERSION
  spec.authors       = ['Jamie Rolfs']
  spec.email         = ['jamie@mavenlink.com', 'alan@mavenlink.com']

  spec.summary       = 'Convert projects that use JavaScript namespace module structures to CommonJS'
  spec.description   = ''
  spec.homepage      = 'https://github.com/jrolfs/killing-in-the-namespace-of'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'bin'
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'thor'

  spec.add_development_dependency 'bundler', '~> 1.12'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'minitest', '~> 5.0'
end