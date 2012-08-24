require 'dm-core'
require 'dm-types/support/dirty_minder'
require 'php_serialize'

module DataMapper
  class Property
    class SerializedPhp < Text
      def custom?
        true
      end

      def primitive?(value)
        !::PHP.serialized?(value)
      end

      def valid?(value, negated = false)
        super || dump(value).kind_of?(::String)
      end

      def load(value)
        if value.nil?
          nil
        elsif value.is_a?(::String)
          typecast_to_primitive(value)
        else
          raise ArgumentError.new("+value+ of a property of SerializedPhp type must be nil or a String")
        end
      end

      def dump(value)
        if value.nil? || (value.is_a?(::String) && !::Php.serialized?(value))
          value
        else
          ::PHP.serialize(value)
        end
      end

      def typecast_to_primitive(value)
        ::PHP.unserialize(value.to_s)
      end

      include ::DataMapper::Property::DirtyMinder

    end # class SerializedPhp
  end # class Property
end # module DataMapper
