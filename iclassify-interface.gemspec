# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{iclassify-interface}
  s.version = "1.0.10"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["W. Andrew Loe III"]
  s.date = %q{2009-07-23}
  s.email = %q{andrew@andrewloe.com}
  s.executables = ["icagent", "icsearch", "icwatcher"]
  s.extra_rdoc_files = [
    "README"
  ]
  s.files = [
    ".gitignore",
     "README",
     "Rakefile",
     "VERSION",
     "bin/icagent",
     "bin/icsearch",
     "bin/icwatcher",
     "iclassify-interface.gemspec",
     "lib/iclassify-interface.rb",
     "lib/iclassify-interface/agent.rb",
     "lib/iclassify-interface/client.rb",
     "lib/iclassify-interface/node.rb",
     "recipes/00_facter.rb",
     "recipes/01_default_class.rb",
     "recipes/02_ec2.rb",
     "recipes/02_mongrel_server.rb",
     "recipes/03_mysql_server.rb"
  ]
  s.homepage = %q{http://github.com/loe/iclassify-interface}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.4}
  s.summary = %q{TODO}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<uuidtools>, [">= 2.0.0"])
      s.add_runtime_dependency(%q<rake>, [">= 0.8.3"])
      s.add_runtime_dependency(%q<launchy>, [">= 0"])
      s.add_runtime_dependency(%q<builder>, [">= 0"])
    else
      s.add_dependency(%q<uuidtools>, [">= 2.0.0"])
      s.add_dependency(%q<rake>, [">= 0.8.3"])
      s.add_dependency(%q<launchy>, [">= 0"])
      s.add_dependency(%q<builder>, [">= 0"])
    end
  else
    s.add_dependency(%q<uuidtools>, [">= 2.0.0"])
    s.add_dependency(%q<rake>, [">= 0.8.3"])
    s.add_dependency(%q<launchy>, [">= 0"])
    s.add_dependency(%q<builder>, [">= 0"])
  end
end
