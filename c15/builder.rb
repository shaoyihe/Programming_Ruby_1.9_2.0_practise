gem 'builder', '< 1.0'
require "builder"

xml = Builder::XmlMarkup.new(indent: 2)
result = xml.beans(xmlns: "http://www.w3.org/2001/XMLSchema-instance") do
	xml.bean(name: "test" , class: "com")
end

puts result