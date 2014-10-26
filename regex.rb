p "abc123" =~ /\d+/
p "abc123" =~ /xyz/

p "abc123"[/\d+/]
p "abc123"[/xyz/]

p "abc123"[/^[a-z]+(\d+)/, 1]

p "abc123"[/(.?).+/, 1]
p "abc123"[/(.??).+/, 1]
p "abc123"[/(.+).+/, 1]
p "abc123"[/(.?+).+/, 1]


p "abc123".sub(/abc/, 'def')

p "abc123".sub(/[a-z]+/) { |s| s.upcase }

p "abc123".gsub(/[a-z]/, 'a'=>'x', 'b'=>'y', 'c'=>'z')

type = case "abc123"
  when /^def/
    :def
  when /^abc/
    :abc
  else
    :other
  end
p type

html = '<a href="a.html">a</a><a href="b.html">b</a>'
p html[%r!<a href="(.+)">(.+)</a>!, 1]

p html[%r!<a href="(.+?)">(.+)</a>!, 1]



