# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fourchette/version'

Gem::Specification.new do |spec|
  spec.name          = "fourchette"
  spec.version       = Fourchette::VERSION
  spec.authors       = ["Jean-Philippe Boily"]
  spec.email         = ["j@jipi.ca"]
  spec.summary       = %q{Your new best friend for isolated testing environments on Heroku.}
  spec.description   = %q{Fourchette is your new best friend for having isolated testing environements. It will help you test your GitHub PRs against a fork of one your Heroku apps. You will have one Heroku app per PR now. Isn't that amazing? It will make testing way easier and you won't have the (maybe) broken code from other PRs on staging but only the code that requires testing.}
  spec.homepage      = "https://github.com/jipiboily/fourchette"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "bundler", "~> 1.5"
  spec.add_dependency "rake"
  spec.add_dependency "puma", "~> 2.7.1"
  spec.add_dependency "sinatra", "~> 1.4.4"
  spec.add_dependency "sinatra-contrib", "~> 1.4.2"
  spec.add_dependency "octokit", "~> 3.0.0"
  spec.add_dependency "git", "~> 1.2.6"
  spec.add_dependency "heroics", "0.0.2"
  spec.add_dependency "heroku", "~> 3.3.0" # Deprecated, but best/easiest solution for the pgbackups...
  spec.add_dependency "sucker_punch", "~> 1.0.2"
end