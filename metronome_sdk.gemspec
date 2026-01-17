# frozen_string_literal: true

require_relative "lib/metronome_sdk/version"

Gem::Specification.new do |s|
  s.name = "metronome-sdk"
  s.version = MetronomeSDK::VERSION
  s.summary = "Ruby library to access the Metronome API"
  s.authors = ["Metronome"]
  s.email = "dev-feedback@metronome.com"
  s.homepage = "https://gemdocs.org/gems/metronome-sdk"
  s.metadata["homepage_uri"] = s.homepage
  s.metadata["source_code_uri"] = "https://github.com/Metronome-Industries/metronome-ruby"
  s.metadata["rubygems_mfa_required"] = false.to_s
  s.required_ruby_version = ">= 3.2.0"

  s.files = Dir[
    "lib/**/*.rb",
    "rbi/**/*.rbi",
    "sig/**/*.rbs",
    "manifest.yaml",
    "SECURITY.md",
    "CHANGELOG.md",
    ".ignore"
  ]
  s.extra_rdoc_files = ["README.md"]
  s.add_dependency "cgi"
  s.add_dependency "connection_pool"
end
