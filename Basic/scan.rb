html = <<XXXX
<p> 1993年2月24日
<a href="http://www.ruby-lang.org/ja/">Ruby`s birthday</a></p>
<p> 2014年1月1日
<a href="http://www.example.com/">元旦</a></p>
XXXX
p html

dates = html.scan(/(\d+)年(\d+)月(\d+)日$/)
p dates

links = html.scan(%r!<a href="(.+?)">(.+?)</a></p>!)
p links

p (0..dates.length).map{|i| [dates[i], links[i]] }

p dates.zip(links)

