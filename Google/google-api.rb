require 'json'
require 'uri'
require 'open-uri'
require 'pp'

api_key = ENV['GOOGLE_API_KEY']
custom_search_engine_id = ENV['GOOGLE_ENGINE_ID']
search_word = URI.encode("クローラー")

url = "https://www.googleapis.com/customsearch/v1?key=#{api_key}&cx=#{custom_search_engine_id}&q=#{search_word}"
pp url

json = JSON.load(open(url))
pp json
json['items'].each do |item|
  puts item['title']
  puts item['link']
end


