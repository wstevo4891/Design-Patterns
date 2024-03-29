require 'rexml/parsers/sax2parser'
require 'rexml/sax2listener'

# Create an xml parser for our data
xml = File.read('./note.xml')
puts xml

parser = REXML::Parsers::SAX2Parser.new(xml)

# Add some observers to listen for start and end elements
parser.listen(:start_element) do |uri, local, qname, attrs|
  puts "start element: #{local}"
end

parser.listen(:end_element) do |uri, local, qname, attrs|
  puts "end element: #{local}"
end

# Parse the XML
parser.parse
