# -*- encoding: utf-8 -*-
# stub: jsonapi-rails 0.4.0 ruby lib

Gem::Specification.new do |s|
  s.name = "jsonapi-rails".freeze
  s.version = "0.4.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Lucas Hosseini".freeze]
  s.date = "2019-03-07"
  s.description = "Efficient, convenient, non-intrusive JSONAPI framework for Rails.".freeze
  s.email = ["lucas.hosseini@gmail.com".freeze]
  s.homepage = "https://github.com/jsonapi-rb/jsonapi-rails".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.1.6".freeze
  s.summary = "jsonapi-rb integrations for Rails.".freeze

  s.installed_by_version = "3.1.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<jsonapi-rb>.freeze, ["~> 0.5.0"])
    s.add_runtime_dependency(%q<jsonapi-parser>.freeze, ["~> 0.1.0"])
    s.add_development_dependency(%q<rails>.freeze, ["~> 5.0"])
    s.add_development_dependency(%q<sqlite3>.freeze, [">= 0"])
    s.add_development_dependency(%q<rake>.freeze, ["~> 11.3"])
    s.add_development_dependency(%q<rspec-rails>.freeze, ["~> 3.5"])
    s.add_development_dependency(%q<with_model>.freeze, ["~> 2.0"])
    s.add_development_dependency(%q<simplecov>.freeze, [">= 0"])
  else
    s.add_dependency(%q<jsonapi-rb>.freeze, ["~> 0.5.0"])
    s.add_dependency(%q<jsonapi-parser>.freeze, ["~> 0.1.0"])
    s.add_dependency(%q<rails>.freeze, ["~> 5.0"])
    s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, ["~> 11.3"])
    s.add_dependency(%q<rspec-rails>.freeze, ["~> 3.5"])
    s.add_dependency(%q<with_model>.freeze, ["~> 2.0"])
    s.add_dependency(%q<simplecov>.freeze, [">= 0"])
  end
end
