module DataMapper
  module Is
    module Markup
 
      def self.included(base)
 
      end
 
      def is_markup(options)
        extend DataMapper::Is::Markup::ClassMethods
        include DataMapper::Is::Markup::InstanceMethods
        
        #merge in default options
        options = {:filter_property => :filter_type, :markup_property => "#{options[:source]}_html" }.merge(options)
        
        # must at least specify a source property to generate the filtered Text
        raise Exception.new("You must specify a :source") unless options.include?(:source)
 
        # save as class variable for later...
        @markup_options = options
                
        # make sure the source property exsists
        source_property = properties.detect{|p| p.name == options[:source].to_sym && p.type == DM::Text}
        
        existing_markup_property = properties.detect{|p| p.name == options[:markup_property].to_sym}
        existing_filter_property = properties.detect{|p| p.name == options[:filter_property].to_sym}
        
        unless existing_markup_property || existing_filter_property
          property markup_property, DM::Text
          property filter_property, DM::Enum[:textile, :markdown, :wikitext], :nullable => false, :default => :textile
        else
          raise Exception.new("#{markup_property} or #{filter_property} has been defined as property already!")
        end
         
        before :save, :apply_filter
        
      end
 
      module ClassMethods
        attr_reader :markup_options
 
        def markup_property
          markup_options[:markup_property]
        end
        
        def filter_property
          markup_options[:filter_property]
        end
        
        def source_property
          markup_options[:source]
        end
        
      end # ClassMethods
 
      module InstanceMethods
        
        def markup_property
          self.send(self.class.markup_property)
        end
        
        def filter_property
          self.send(self.class.markup_property)
        end
        
        def source_property
          self.send(self.class.source_property)
        end
        
        def apply_filter
          if new_record? || attribute_dirty?(self.class.source_property) || attribute_dirty?(self.class.filter_property)
            markup_property = generate_markup(self.send(:filter_type))
          end
        end
        
        def generate_markup(filter)
          case filter
          when :textile:
            RedCloth.new(source_property).to_html
          when :markdown:
            BlueCloth.new(source_property).to_html
          when :wikitext:
            Wikitext::Parser.new.parse(source_property)
          else
            raise Exception.new("Unknown Filter!! use textile, markdown or wikitext as filters only")
          end
        end
        
        protected
        
        def markup_property=(str)
          self.send("#{self.class.markup_property}=", str)
        end
        
      end # InstanceMethods
 
    end # Markup
  end # Is
end # DataMapper