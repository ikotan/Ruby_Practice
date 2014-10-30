#! /usr/bin/env ruby
require 'webrick'

class TestContentServlet < WEBrick::HTTPServlet::AbstractServlet

  def do_GET(req, res)
    res.body = "This is #{req.path}<br>"
    res.content_type = WEBrick::HTTPUtils.mime_type(
      # req.path_info,
      req.path,
      WEBrick::HTTPUtils::DefaultMimeTypes
    )
  end
end

host = ENV['LOCAL_HOST']
srv = WEBrick::HTTPServer.new(
  :BindAddress => host,
  :Port => 7777
)
srv.mount( '/', TestContentServlet )
trap("INT"){ srv.shutdown }
srv.start

