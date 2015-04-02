require 'ipaddress'

module Transproc
  register(:to_ip_address) do |value|
    IPAddress.parse(value)
  end
end
