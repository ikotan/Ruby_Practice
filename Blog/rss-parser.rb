require 'open-uri'
require 'rexml/document'
require 'date'

url='http://blog.livedoor.jp/staff/index.rdf'

doc = REXML::Document.new(open(url))
doc.elements.each('rdf:RDF/item') do |item|
  dc_date = Date.parse(item.elements['dc:date'].text)

  if (Date.today - dc_date).to_i <= 1
    puts item.elements['link'].text
  end
end

