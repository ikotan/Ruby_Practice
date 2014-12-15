require 'kconv'

str = '日本語の文字列'

puts str.toeuc
puts str.tojis
puts str.toutf8

puts str.kconv(Kconv::SJIS, Kconv::UTF8)

puts str.kconv(Kconv::EUC, Kconv::UTF8)
