require 'rubygems'
require 'hoe'
require 'spec/rake/spectask'
require 'pathname'

ROOT = Pathname(__FILE__).dirname.expand_path
require ROOT + 'lib/dm-is-markup/is/version'

AUTHOR = "Aaron Qian, Brian Smith"
EMAIL  = "aaron [a] ekohe [d] com; wbsmith83 [a] gmail [d] com"
GEM_NAME = "dm-is-markup"
GEM_VERSION = DataMapper::Is::Markup::VERSION
GEM_DEPENDENCIES = [["dm-core", "~>0.9"]]
GEM_CLEAN = ["log", "pkg"]
GEM_EXTRAS = { :has_rdoc => false }
 
PROJECT_NAME = "dm-is-slug"
PROJECT_URL  = "http://github.com/aq1018/dm-is-markup"
PROJECT_DESCRIPTION = PROJECT_SUMMARY = "Parse a field with a markup engine and save it to a new field created by the plugin."

require 'tasks/hoe'

task :default => [ :spec ]
 
WIN32 = (RUBY_PLATFORM =~ /win32|mingw|cygwin/) rescue nil
SUDO  = WIN32 ? '' : ('sudo' unless ENV['SUDOLESS'])
 
desc "Install #{GEM_NAME} #{GEM_VERSION}"
task :install => [ :package ] do
  sh "#{SUDO} gem install --local pkg/#{GEM_NAME}-#{GEM_VERSION} --no-update-sources", :verbose => false
end
 
desc "Uninstall #{GEM_NAME} #{GEM_VERSION} (default ruby)"
task :uninstall => [ :clobber ] do
  sh "#{SUDO} gem uninstall #{GEM_NAME} -v#{GEM_VERSION} -I -x", :verbose => false
end
 
desc 'Run specifications'
Spec::Rake::SpecTask.new(:spec) do |t|
  t.spec_opts << '--options' << 'spec/spec.opts' if File.exists?('spec/spec.opts')
  t.spec_files = Pathname.glob(Pathname.new(__FILE__).dirname + 'spec/**/*_spec.rb')
 
  begin
    t.rcov = ENV.has_key?('NO_RCOV') ? ENV['NO_RCOV'] != 'true' : true
    t.rcov_opts << '--exclude' << 'spec'
    t.rcov_opts << '--text-summary'
    t.rcov_opts << '--sort' << 'coverage' << '--sort-reverse'
  rescue Exception
    puts 'rcov is not installed. Please install before continuing'
    exit
  end
end