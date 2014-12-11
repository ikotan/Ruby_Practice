#! /usr/bin/env ruby
# coding: utf-8
require 'csv'
require 'kconv'

file_path = '[csvfile]'
CSV.foreach(file_path, encoding: "Shift_JIS:UTF-8") do |row|
  puts row.join(",")
end
