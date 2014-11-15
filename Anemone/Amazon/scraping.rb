#! /usr/bin/env ruby

require 'anemone'
require 'nokogiri'
require 'kconv'

urls = [
  "http://www.amazon.co.jp/gp/bestsellers/books/466282/ref=zg_bs_nav_b_1_b/377-3634523-2905014",
  "http://www.amazon.co.jp/gp/bestsellers/books/466298/ref=zg_bs_nav_b_1_b/377-3634523-2905014",
  "http://www.amazon.co.jp/gp/bestsellers/digital-text/2291905051/ref=zg_bs_nav_kinc_2_2275256051/378-5560169-7054269",
  "http://www.amazon.co.jp/gp/bestsellers/digital-text/2291657051/ref=zg_bs_nav_kinc_2_2275256051/378-5560169-7054269"
]

Anemone.crawl( urls, :depth_limit => 0, :skip_query_string => true ) do |anemone|
  anemone.on_every_page do |page|
    doc = Nokogiri::HTML.parse(page.body.toutf8)

    # カテゴリ名
    category = doc.xpath( "//*[@id='zg_browseRoot']/ul/li/a" ).text
    sub_category = doc.xpath( "//*[@id=\"zg_listTitle\"]/span" ).text
    puts category+"/"+sub_category

    # 一般・Kindleストア有料
    items = doc.xpath( "//div[@class=\"zg_itemRow\"]/div[1]/div[2]" )

    # Kindleストア無料
    items += doc.xpath( "//div[@class=\"zg_itemRow\"]/div[2]/div[2]" )

    items.each { |item|
      # ランキング
      puts item.xpath( "div[1]/span[1]" ).text

      # タイトル
      puts item.xpath( "div[\"zg_title\"]/a" ).text

      # ASIN
      puts item.xpath( "div[\"zg_title\"]/a" )
        .attribute("href").text.match( %r{dp/(.+?)/})[1]

      puts "\n"
    }

  end
end

# 466282 本：ビジネス・経済
# 466298 本：IT
# 2291905051 Kindle：ビジネス・経済
# 2291657051 Kindle：IT








