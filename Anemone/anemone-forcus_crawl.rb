require 'anemone'

URL = "http://www.amazon.co.jp/gp/bestsellers/"
Anemone.crawl(URL, :depth_limit => 1) do |anemone|
  anemone.focus_crawl do |page|
    page.links.keep_if { |link|
      link.to_s.match(/\/bestsellers/)
    }
  end
  anemone.on_every_page do |page|
    puts page.url
  end
end




