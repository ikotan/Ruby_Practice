ary = []
[1, 10, 100].each {
  |x| ary << x*3
}
p ary

p [1, 10, 100].map { |x| x*3 }

p [2, 7, 8].select { |x| x.odd? }
p [2, 7, 8].select { |x| x.even? }

