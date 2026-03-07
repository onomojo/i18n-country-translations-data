# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name        = "i18n-country-translations-data"
  s.version     = "1.0.0"
  s.summary     = "Localized country name translations in 168 locales"
  s.description = "CLDR-sourced country name translations for 257 territory codes across 168 locales. Flat YAML data files for use by i18n-country-translations and other consumers."
  s.authors     = ["Brian McQuay"]
  s.email       = ["brian@onomojo.com"]
  s.homepage    = "https://github.com/onomojo/i18n-country-translations-data"
  s.license     = "MIT"

  s.required_ruby_version = ">= 3.1"

  s.files = Dir["lib/**/*", "data/*.yml", "README.md", "LICENSE"]
  s.require_paths = ["lib"]

  s.metadata = {
    "homepage_uri" => s.homepage,
    "source_code_uri" => s.homepage,
    "bug_tracker_uri" => "#{s.homepage}/issues"
  }
end
