require 'dm-core'
require 'dm-types-serialized-php/version'

module DataMapper
  class Property
    autoload :SerializedPhp, 'dm-types-serialized-php/serialized-php'
  end
end