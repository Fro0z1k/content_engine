# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require './lib/content_engine/version'

Gem::Specification.new do |spec|
  spec.name          = "content_engine"
  spec.version       = ContentEngine::VERSION
  spec.licenses      = ['MIT']
  spec.authors       = ["Vitalik"]
  spec.email         = ["vitalikstetsenko@hotmail.com"]

  spec.summary       = %q{This is an parse news}
  spec.description   = %q{example have gems: "nogokiri", "mechanize"}
  spec.homepage      = "https://rubygems.org/gems/example"

    # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
    # delete this section to allow pushing this gem to any host.
    if spec.respond_to?(:metadata)
      spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
    else
      raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
    end

  spec.files         = ['lib/content_engine.rb']
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
