# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "chef"
  s.version = "0.10.8"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Adam Jacob"]
  s.date = "2011-12-16"
  s.description = "A systems integration framework, built to bring the benefits of configuration management to your entire infrastructure."
  s.email = "adam@opscode.com"
  s.executables = ["chef-client", "chef-solo", "knife", "shef"]
  s.extra_rdoc_files = ["README.rdoc", "LICENSE"]
  s.files = ["bin/chef-client", "bin/chef-solo", "bin/knife", "bin/shef", "README.rdoc", "LICENSE"]
  s.homepage = "http://wiki.opscode.com/display/chef"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.17"
  s.summary = "A systems integration framework, built to bring the benefits of configuration management to your entire infrastructure."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<mixlib-config>, [">= 1.1.2"])
      s.add_runtime_dependency(%q<mixlib-cli>, [">= 1.1.0"])
      s.add_runtime_dependency(%q<mixlib-log>, [">= 1.3.0"])
      s.add_runtime_dependency(%q<mixlib-authentication>, [">= 1.1.0"])
      s.add_runtime_dependency(%q<ohai>, [">= 0.6.0"])
      s.add_runtime_dependency(%q<rest-client>, ["< 1.7.0", ">= 1.0.4"])
      s.add_runtime_dependency(%q<bunny>, [">= 0.6.0"])
      s.add_runtime_dependency(%q<json>, ["<= 1.6.1", ">= 1.4.4"])
      s.add_runtime_dependency(%q<treetop>, ["~> 1.4.9"])
      s.add_runtime_dependency(%q<net-ssh>, ["~> 2.1.3"])
      s.add_runtime_dependency(%q<net-ssh-multi>, ["~> 1.1.0"])
      s.add_runtime_dependency(%q<erubis>, [">= 0"])
      s.add_runtime_dependency(%q<moneta>, [">= 0"])
      s.add_runtime_dependency(%q<highline>, [">= 0"])
      s.add_runtime_dependency(%q<uuidtools>, [">= 0"])
      s.add_development_dependency(%q<rdoc>, [">= 0"])
      s.add_development_dependency(%q<sdoc>, [">= 0"])
      s.add_development_dependency(%q<ronn>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<dep_selector>, [">= 0"])
      s.add_development_dependency(%q<rspec-core>, [">= 0"])
      s.add_development_dependency(%q<rspec-expectations>, [">= 0"])
      s.add_development_dependency(%q<rspec-mocks>, [">= 0"])
    else
      s.add_dependency(%q<mixlib-config>, [">= 1.1.2"])
      s.add_dependency(%q<mixlib-cli>, [">= 1.1.0"])
      s.add_dependency(%q<mixlib-log>, [">= 1.3.0"])
      s.add_dependency(%q<mixlib-authentication>, [">= 1.1.0"])
      s.add_dependency(%q<ohai>, [">= 0.6.0"])
      s.add_dependency(%q<rest-client>, ["< 1.7.0", ">= 1.0.4"])
      s.add_dependency(%q<bunny>, [">= 0.6.0"])
      s.add_dependency(%q<json>, ["<= 1.6.1", ">= 1.4.4"])
      s.add_dependency(%q<treetop>, ["~> 1.4.9"])
      s.add_dependency(%q<net-ssh>, ["~> 2.1.3"])
      s.add_dependency(%q<net-ssh-multi>, ["~> 1.1.0"])
      s.add_dependency(%q<erubis>, [">= 0"])
      s.add_dependency(%q<moneta>, [">= 0"])
      s.add_dependency(%q<highline>, [">= 0"])
      s.add_dependency(%q<uuidtools>, [">= 0"])
      s.add_dependency(%q<rdoc>, [">= 0"])
      s.add_dependency(%q<sdoc>, [">= 0"])
      s.add_dependency(%q<ronn>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<dep_selector>, [">= 0"])
      s.add_dependency(%q<rspec-core>, [">= 0"])
      s.add_dependency(%q<rspec-expectations>, [">= 0"])
      s.add_dependency(%q<rspec-mocks>, [">= 0"])
    end
  else
    s.add_dependency(%q<mixlib-config>, [">= 1.1.2"])
    s.add_dependency(%q<mixlib-cli>, [">= 1.1.0"])
    s.add_dependency(%q<mixlib-log>, [">= 1.3.0"])
    s.add_dependency(%q<mixlib-authentication>, [">= 1.1.0"])
    s.add_dependency(%q<ohai>, [">= 0.6.0"])
    s.add_dependency(%q<rest-client>, ["< 1.7.0", ">= 1.0.4"])
    s.add_dependency(%q<bunny>, [">= 0.6.0"])
    s.add_dependency(%q<json>, ["<= 1.6.1", ">= 1.4.4"])
    s.add_dependency(%q<treetop>, ["~> 1.4.9"])
    s.add_dependency(%q<net-ssh>, ["~> 2.1.3"])
    s.add_dependency(%q<net-ssh-multi>, ["~> 1.1.0"])
    s.add_dependency(%q<erubis>, [">= 0"])
    s.add_dependency(%q<moneta>, [">= 0"])
    s.add_dependency(%q<highline>, [">= 0"])
    s.add_dependency(%q<uuidtools>, [">= 0"])
    s.add_dependency(%q<rdoc>, [">= 0"])
    s.add_dependency(%q<sdoc>, [">= 0"])
    s.add_dependency(%q<ronn>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<dep_selector>, [">= 0"])
    s.add_dependency(%q<rspec-core>, [">= 0"])
    s.add_dependency(%q<rspec-expectations>, [">= 0"])
    s.add_dependency(%q<rspec-mocks>, [">= 0"])
  end
end
