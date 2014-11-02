#! /usr/bin/env ruby

require 'cgi'

def parse ( page_source )
  dates = page_source.scan(%r!(\d+)年 ?(\d+)月 ?(\d+)日<br />!)
  url_titles = page_source.scan(%r!^<a href="(.+?)">(.+?)</a><br />!)

  url_titles.zip(dates).map{ | (aurl, atitle), ymd |
    [ CGI.unescapeHTML( aurl ), CGI.unescapeHTML( atitle ), Time.local( *ymd ) ]
  }
end

x = parse( open( "samplepage.html", &:read ) )
p x[0,4]
