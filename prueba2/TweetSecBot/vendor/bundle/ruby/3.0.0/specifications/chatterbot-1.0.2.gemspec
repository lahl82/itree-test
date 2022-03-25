# -*- encoding: utf-8 -*-
# stub: chatterbot 1.0.2 ruby lib

Gem::Specification.new do |s|
  s.name = "chatterbot".freeze
  s.version = "1.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Colin Mitchell".freeze]
  s.date = "2016-02-27"
  s.description = "A ruby framework for writing bots that run on Twitter. Comes with a simple DSL for easy coding.".freeze
  s.email = "colin@muffinlabs.com".freeze
  s.executables = ["chatterbot-blacklist".freeze, "chatterbot-register".freeze, "chatterbot-status".freeze]
  s.files = ["bin/chatterbot-blacklist".freeze, "bin/chatterbot-register".freeze, "bin/chatterbot-status".freeze]
  s.homepage = "http://github.com/muffinista/chatterbot".freeze
  s.licenses = ["WTFPL".freeze]
  s.rubygems_version = "3.2.22".freeze
  s.summary = "A ruby framework for writing Twitter bots".freeze

  s.installed_by_version = "3.2.22" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<redcarpet>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<oauth>.freeze, ["~> 0.4.7"])
    s.add_runtime_dependency(%q<twitter>.freeze, ["= 5.14.0"])
    s.add_runtime_dependency(%q<launchy>.freeze, [">= 2.4.2"])
    s.add_runtime_dependency(%q<colorize>.freeze, [">= 0.7.3"])
    s.add_development_dependency(%q<yard>.freeze, [">= 0"])
    s.add_development_dependency(%q<shoulda>.freeze, [">= 0"])
    s.add_development_dependency(%q<rake>.freeze, [">= 0"])
    s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0.0"])
    s.add_development_dependency(%q<rspec-mocks>.freeze, ["~> 3.0.2"])
    s.add_development_dependency(%q<rdoc>.freeze, [">= 0"])
    s.add_development_dependency(%q<simplecov>.freeze, [">= 0"])
    s.add_development_dependency(%q<observr>.freeze, [">= 0"])
  else
    s.add_dependency(%q<redcarpet>.freeze, [">= 0"])
    s.add_dependency(%q<oauth>.freeze, ["~> 0.4.7"])
    s.add_dependency(%q<twitter>.freeze, ["= 5.14.0"])
    s.add_dependency(%q<launchy>.freeze, [">= 2.4.2"])
    s.add_dependency(%q<colorize>.freeze, [">= 0.7.3"])
    s.add_dependency(%q<yard>.freeze, [">= 0"])
    s.add_dependency(%q<shoulda>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.0.0"])
    s.add_dependency(%q<rspec-mocks>.freeze, ["~> 3.0.2"])
    s.add_dependency(%q<rdoc>.freeze, [">= 0"])
    s.add_dependency(%q<simplecov>.freeze, [">= 0"])
    s.add_dependency(%q<observr>.freeze, [">= 0"])
  end
end
