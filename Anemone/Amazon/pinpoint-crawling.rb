#! /usr/bin/env ruby

require 'anemone'

urls = [
  "http://www.amazon.co.jp/gp/bestsellers/books/466282/ref=zg_bs_nav_b_1_b/377-3634523-2905014",
  "http://www.amazon.co.jp/gp/bestsellers/books/466298/ref=zg_bs_nav_b_1_b/377-3634523-2905014",
  "http://www.amazon.co.jp/gp/bestsellers/digital-text/2291905051/ref=zg_bs_nav_kinc_2_2275256051/378-5560169-7054269",
  "http://www.amazon.co.jp/gp/bestsellers/digital-text/2291657051/ref=zg_bs_nav_kinc_2_2275256051/378-5560169-7054269"
]

Anemone.crawl( urls, :depth_limit => 0, :skip_query_string => true ) do |anemone|
  anemone.on_every_page do |page|
    puts page.url
  end
end

# 466282 本：ビジネス・経済
# 466298 本：IT
# 2291905051 Kindle：ビジネス・経済
# 2291657051 Kindle：IT

