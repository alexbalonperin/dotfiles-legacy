# -*- encoding: utf-8 -*-
# stub: cheat 1.3.3 ruby lib

Gem::Specification.new do |s|
  s.name = "cheat"
  s.version = "1.3.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Chris Wanstrath", "Erik Michaels-Ober"]
  s.date = "2012-12-16"
  s.description = "cheat prints cheat sheets from cheat.errtheblog.com, a wiki-like repository of programming knowledge."
  s.email = ["chris@ozmm.org", "sferik@gmail.com"]
  s.executables = ["cheat"]
  s.files = ["bin/cheat"]
  s.homepage = "http://cheat.errtheblog.com"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "cheat prints cheat sheets from cheat.errtheblog.com"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<pager>, ["~> 1.0"])
    else
      s.add_dependency(%q<pager>, ["~> 1.0"])
    end
  else
    s.add_dependency(%q<pager>, ["~> 1.0"])
  end
end
