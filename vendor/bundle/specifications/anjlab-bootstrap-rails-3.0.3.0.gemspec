# -*- encoding: utf-8 -*-
# stub: anjlab-bootstrap-rails 3.0.3.0 ruby lib

Gem::Specification.new do |s|
  s.name = "anjlab-bootstrap-rails".freeze
  s.version = "3.0.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Yury Korolev".freeze]
  s.date = "2013-12-05"
  s.description = "Bootstrap CSS (with Sass flavour) and JS toolkits for Rails 3 projects".freeze
  s.email = ["yury.korolev@gmail.com".freeze]
  s.homepage = "https://github.com/anjlab/bootstrap-rails".freeze
  s.rubygems_version = "3.0.3".freeze
  s.summary = "Bootstrap CSS (with Sass flavour) and JS toolkits for Rails 3 projects".freeze

  s.installed_by_version = "3.0.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<railties>.freeze, [">= 3.0"])
      s.add_runtime_dependency(%q<sass>.freeze, [">= 3.2"])
      s.add_development_dependency(%q<bundler>.freeze, [">= 1.0"])
      s.add_development_dependency(%q<rails>.freeze, [">= 3.1"])
    else
      s.add_dependency(%q<railties>.freeze, [">= 3.0"])
      s.add_dependency(%q<sass>.freeze, [">= 3.2"])
      s.add_dependency(%q<bundler>.freeze, [">= 1.0"])
      s.add_dependency(%q<rails>.freeze, [">= 3.1"])
    end
  else
    s.add_dependency(%q<railties>.freeze, [">= 3.0"])
    s.add_dependency(%q<sass>.freeze, [">= 3.2"])
    s.add_dependency(%q<bundler>.freeze, [">= 1.0"])
    s.add_dependency(%q<rails>.freeze, [">= 3.1"])
  end
end
