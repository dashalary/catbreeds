require_relative 'lib/catbreeds/version'

Gem::Specification.new do |spec|
  spec.name          = "catbreeds"
  spec.version       = CatBreeds::VERSION
  spec.authors       = ["dashalary"]
  spec.email         = ["dk2800@nyu.edu"]

  spec.summary       = %q{Cat breeds}
  spec.description   = %q{Cat breeds}
  spec.homepage      = "https://github.com/dashalary/catbreeds"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

 

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/dashalary/catbreeds"
  spec.metadata["changelog_uri"] = "https://github.com/dashalary/catbreeds"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  # spec.add_dependency "httparty"
  # spec.add_dependency "dotenv"
  # spec.add_dependency "json"
  # spec.add_development_dependency "rake", "~> 10.0"
  # spec.add_development_dependency "bundler", "~> 2.0"
end
