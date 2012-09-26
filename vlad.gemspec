# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vlad/version'

Gem::Specification.new do |gem|
  gem.name = "vlad"
  gem.version = Vlad::VERSION
  gem.authors = ["Ryan Davis", "Eric Hodel", "Wilson Bilkovich"]
  gem.email = ["ryand-ruby@zenspider.com", "drbrain@segment7.net", "wilson@supremetyrant.com"]
  gem.description = %q{Vlad the Deployer is pragmatic application deployment automation, without mercy. Much like Capistrano, but with 1/10th the complexity. Vlad integrates seamlessly with Rake, and uses familiar and standard tools like ssh and rsync.  Impale your application on the heartless spike of the Deployer.}
  gem.summary = %q{Vlad the Deployer is pragmatic application deployment automation, without mercy}
  gem.homepage = %q{http://rubyhitsquad.com/Vlad_the_Deployer.html}

  gem.files            = `git ls-files`.split($/)
  gem.test_files       = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.has_rdoc = true
  gem.rdoc_options = ["--main", "README.txt"]
  gem.extra_rdoc_files = ["History.txt", "Manifest.txt", "README.txt", "considerations.txt"] + gem.files.grep(%r{^doco/})

  gem.add_runtime_dependency("rake", ['~> 0.8'])
  gem.add_runtime_dependency("rake-remote_task", ['~> 2.0'])

  gem.add_development_dependency('minitest', ['~> 2.11.0'])
  gem.add_development_dependency('hoe', ['~> 2.14.0'])
end
