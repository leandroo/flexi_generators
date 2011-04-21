require 'rails/generators/base'

module Flexi
  module Generators
    class Base < Rails::Generators::Base #:nodoc:
      def self.source_root
        @_nifty_source_root ||= File.expand_path(File.join(File.dirname(__FILE__), 'flexi', generator_name, 'templates'))
      end

      def self.banner
        "#{$0} flexi:#{generator_name} #{self.arguments.map{ |a| a.usage }.join(' ')} [options]"
      end
    end
  end
end

