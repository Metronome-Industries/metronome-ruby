# frozen_string_literal: true

require_relative "lib/metronome/version"

Gem::Specification.new do |s|
  s.name = "metronome"
  s.version = Metronome::VERSION
  s.summary = "Ruby library to access the Metronome API"
  s.authors = ["Metronome"]
  s.email = "dev-feedback@metronome.com"
  s.files = Dir["lib/**/*.rb", "rbi/**/*.rbi", "sig/**/*.rbs", "manifest.yaml"]
  s.extra_rdoc_files = ["README.md"]
  s.required_ruby_version = ">= 3.0.0"
  s.add_dependency "connection_pool"
  s.homepage = "https://gemdocs.org/gems/metronome/latest"
  s.metadata["homepage_uri"] = s.homepage
  s.metadata["source_code_uri"] = "https://github.com/Metronome-Industries/metronome-ruby"
  s.metadata["rubygems_mfa_required"] = "false"
end
