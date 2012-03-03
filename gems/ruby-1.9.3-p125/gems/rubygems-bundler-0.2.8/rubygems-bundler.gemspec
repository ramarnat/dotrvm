Gem::Specification.new do |s|
  s.name = "rubygems-bundler"
  s.version = "0.2.8"
  s.date = "2011-12-27"
  s.summary = "Make rubygems generate bundler aware executable wrappers"
  s.email = "mpapis@gmail.com"
  s.homepage = "http://mpapis.github.com/rubygems-bundler"
  s.description = "Integrate Rubygems and Bundler"
  s.has_rdoc = false
  s.authors = ["Michal Papis"]
  s.files = [
    "bin/ruby_bundler_wrapper",
    "ext/wrapper_installer/extconf.rb",
    "lib/rubygems_bundler/regenerate_binstubs_command.rb",
    "lib/rubygems_bundler/rubygems_bundler_installer.rb",
    "lib/rubygems_bundler/fix_wrapper.rb",
    "lib/rubygems_plugin.rb",
    "LICENSE",
    "README.md",
    "rubygems-bundler.gemspec",
  ]
  s.extensions = ["ext/wrapper_installer/extconf.rb"]
  s.post_install_message = <<-TEXT
==================================================================================

rubygems-bundler allows running gem executables in Gemfile specified versions!

Note: from 0.2.8 the wrapper name changes, you need to repeat instructions bellow.

First step is to add following line to ~/.gemrc

    custom_shebang: $env ruby_bundler_wrapper

To make all the executables bundler compatible run:

    gem regenerate_binstubs # only once

To always use bundler add the following line to ~/.rvmrc or ~/.bashrc

    export USE_BUNDLER=force

Relogin or call in every open shell:

    export USE_BUNDLER=force

For more information read:

    https://github.com/mpapis/rubygems-bundler

==================================================================================
TEXT
end
