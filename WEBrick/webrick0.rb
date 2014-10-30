#! /usr/bin/env ruby
require 'webrick'
host = ENV['LOCAL_HOST']
Thread.start {
  WEBrick::HTTPServer.new(
    DocumentRoot:".",
    Port:7777, 
    # BindAddress:"127.0.0.1"
    BindAddress:host
  ).start
}
gets
