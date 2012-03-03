# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "rubygems-bundler"
  s.version = "0.2.8"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Michal Papis"]
  s.date = "2011-12-27"
  s.description = "Integrate Rubygems and Bundler"
  s.email = "mpapis@gmail.com"
  s.extensions = ["ext/wrapper_installer/extconf.rb"]
  s.files = ["ext/wrapper_installer/extconf.rb"]
  s.homepage = "http://mpapis.github.com/rubygems-bundler"
  s.post_install_message = "==================================================================================\n\nrubygems-bundler allows running gem executables in Gemfile specified versions!\n\nNote: from 0.2.8 the wrapper name changes, you need to repeat instructions bellow.\n\nFirst step is to add following line to ~/.gemrc\n\n    custom_shebang: $env ruby_bundler_wrapper\n\nTo make all the executables bundler compatible run:\n\n    gem regenerate_binstubs # only once\n\nTo always use bundler add the following line to ~/.rvmrc or ~/.bashrc\n\n    export USE_BUNDLER=force\n\nRelogin or call in every open shell:\n\n    export USE_BUNDLER=force\n\nFor more information read:\n\n    https://github.com/mpapis/rubygems-bundler\n\n==================================================================================\n"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.17"
  s.summary = "Make rubygems generate bundler aware executable wrappers"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
