require 'rubygems'
require 'facter'

Facter.each do |name, value|
  replace_attrib(name, value)
end
