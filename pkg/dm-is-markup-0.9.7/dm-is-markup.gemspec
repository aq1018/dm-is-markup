# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{dm-is-markup}
  s.version = "0.9.7"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Brian Smith"]
  s.date = %q{2008-11-26}
  s.description = %q{Parse a field with a markup engine and save it to a new field created by the plugin.}
  s.email = %q{wbsmith83@gmail.com}
  s.extra_rdoc_files = ["README", "README.markdown", "lib/dm-is-markup.rb", "lib/dm-is-markup/is/markup.rb"]
  s.files = ["Rakefile", "README", "README.markdown", "spec/integration/markup_spec.rb", "spec/spec.opts", "spec/spec_helper.rb", "Manifest", "lib/dm-is-markup.rb", "lib/dm-is-markup/is/markup.rb", "dm-is-markup.gemspec"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/brianthecoder/dm-is-markup}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Dm-is-markup", "--main", "README"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{dm-is-markup}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Parse a field with a markup engine and save it to a new field created by the plugin.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
