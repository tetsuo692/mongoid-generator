require 'rails/generators/named_base'
require 'rails/generators/active_model'

module Mongoid
  module Generators
    class Base < Rails::Generators::NamedBase #:nodoc:

      def self.source_root
        @_mongoid_source_root ||= File.expand_path(File.join(File.dirname(__FILE__),
                                                      'mongoid', generator_name, 'templates'))
      end
   
    end
  end
end

