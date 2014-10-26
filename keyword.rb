def f( a:1, b:"foo", c:nil ) [a,b,c] end
p f
p f a:10
p f c:1.2, a:10
p f({ a:10 })
p f unknown:1 rescue $!



