Gem::Specification.new do |s|
  s.name = %q{dm-is-markup}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Aaron Qian, Brian Smith"]
  s.date = %q{2009-02-26}
  s.description = %q{Parse a field with a markup engine and save it to a new field created by the plugin.}
  s.email = ["aaron [a] ekohe [d] com; wbsmith83 [a] gmail [d] com"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "README.txt"]
  s.files = ["History.txt", "LICENSE", "Manifest.txt", "README.txt", "Rakefile", "TODO", "lib/dm-is-markup.rb", "lib/dm-is-markup/is/markup.rb", "lib/dm-is-markup/is/version.rb"]
  s.homepage = %q{http://github.com/aq1018/dm-is-markup}
  s.rdoc_options = ["--main", "README.txt"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{dm-is-slug}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Parse a field with a markup engine and save it to a new field created by the plugin.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<dm-core>, ["~> 0.9"])
      s.add_development_dependency(%q<hoe>, [">= 1.8.2"])
    else
      s.add_dependency(%q<dm-core>, ["~> 0.9"])
      s.add_dependency(%q<hoe>, [">= 1.8.2"])
    end
  else
    s.add_dependency(%q<dm-core>, ["~> 0.9"])
    s.add_dependency(%q<hoe>, [">= 1.8.2"])
  end
end
