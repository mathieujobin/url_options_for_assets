# -*- encoding: utf-8 -*-

Gem::Specification.new do |gem|
  gem.authors       = ["Mathieu Jobin"]
  gem.email         = ["mjobin@mdsol.com"]
  gem.description   = %q{url_options_for_assets: Enable url_options for assets}
  gem.summary       = %q{This small gem monkey patch Sprocket rails_helper}
  gem.homepage      = "https://github.com/mjobin-mdsol/url_options_for_assets"

  gem.files         = Dir["lib/**/*"] + %w(README.md)
  gem.name          = "url_options_for_assets"
  gem.require_paths = ["lib"]
  gem.version       = '0.0.1'

  gem.add_dependency 'rails', '~> 3.2.13'
end
