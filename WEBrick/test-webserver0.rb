#! /usr/bin/env ruby

require 'webrick'

class TestContentServlet < WEBrick::HTTPServlet::AbstractServlet

  def do_GET( req, res )
    res.body = case req.path
               when /\.html$/; html_content req.path
               when /\.txt$/;  text_content req.path
               else;           "dummy"
               end
    res.content_type = WEBrick::HTTPUtils.mime_type(
      req.path_info,
      WEBrick::HTTPUtils::DefaultMimeTypes
    )
  end

  def html_content( path )
    p path
    node = path[ 0..-6 ]
    <<HTML
<html><head><title>#{path}</title></head>
<body><P>
<a href="#{node}/1.html">#{node}/1.html</a><br>
<a href="#{node}/2.html">#{node}/2.html</a><br>
<a href="#{node}.txt">#{node}.txt</a><br>
<a href="http://#{ENV['LOCAL_HOST']}:7777#{node}.org">#{node}.org</a><br>
<a href="/1.html">/1.html</a>
</p></body></html>
HTML

  end

  def text_content( path )
    "This is #{path}"
  end

  srv = WEBrick::HTTPServer.new(
    :BindAddress => ENV['LOCAL_HOST'],
    :Port        => 7777
  )
  srv.mount( '/', TestContentServlet )
  trap("INT"){ srv.shutdown }
  srv.start

end
