# Needed to import datamapper and other gems
require 'rubygems'
require 'pathname'
 
# Add all external dependencies for the plugin here
require 'dm-core'
 
# Require plugin-files
require Pathname(__FILE__).dirname.expand_path / 'dm-is-markup' / 'is' / 'markup.rb'
 
 
# Include the plugin in Resource
module DataMapper
  module Resource
    module ClassMethods
      include DataMapper::Is::Markup
    end # module ClassMethods
  end # module Resource
end # module DataMapper