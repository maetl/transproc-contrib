require 'addressable/uri'

module Transproc
  # Coerce string to a URI value
  register(:to_uri) do |value|
    Addressable::URI.parse(value)
  end
end
