p format("%s %d URLs", "Download", 23)

p "abc\n".chomp
p "abc\n\n".chomp
p "abc\n\n".chomp("")

p "abcd".count("a")
p "abcd".count("ab")
p "abcd".count("a-c")

p "abcd".count("a-c", "^b")

s = "ab\ncs\n"
p s.lines.to_a
p s.lines.map(&:chomp)
p s.split("\n");

a = []
s.each_line{|l| a << l}
p a

s = " ab cd ef "
p s.split

p s.split(nil,2)

p s.strip

p "abc".chars.to_a

