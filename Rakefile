require 'rubygems'
require 'rake'
require 'echoe'

Echoe.new('dm-is-markup', '0.9.7') do |p|
  p.description    = "Parse a field with a markup engine and save it to a new field created by the plugin."
  p.url            = "http://github.com/brianthecoder/dm-is-markup"
  p.author         = "Brian Smith"
  p.email          = "wbsmith83@gmail.com"
  p.ignore_pattern = ["tmp/*", "script/*"]
  p.development_dependencies = []
end

Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each{|ext| load ext}