require 'open-uri'
require 'rexml/document'

def get_xml_doc(url)
  return REXML::Document.new(open(url))
end

base_url="http://blog.takuros.net/sitemap.xml"
base_url="http://blog.livedoor.jp/staff/sitemap.xml"
sitemaps = get_xml_doc(base_url)
sitemaps.elements.each('sitemapindex/sitemap/loc') do |element|
  # puts element.text
  sitemap = get_xml_doc(element.text)
  sitemap.elements.each('urlset/url/loc/') do |ele|
    if /\/staff\/archives\/(\d+)\.html/ =~ ele.text
      puts ele.text
    end
  end
end
