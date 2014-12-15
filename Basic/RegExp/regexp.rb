# =~
puts "My first <strong>Regular</strong>Expression" =~ /Regular/

# match
puts "My first <strong>Regular</strong>Expression".match(/Regular/)

puts "==============================="

# matchdata
str = "My first <strong>Regular</strong>Expression"
matchdata = str.match(/<strong>(.*?)<\/strong>/)

puts "==============================="

# 前の文字
puts matchdata.pre_match
# 後の文字
puts matchdata.post_match
# マッチした文字
puts matchdata[0]
# キャプチャした文字
puts matchdata[1]

puts "==============================="

# 特殊変数
moji = "My first <strong>Regular</strong>Expression"
moji.match(/<strong>(.*?)<\/strong>/)
puts $`
puts $'
puts $&
puts $1

puts "==============================="

# 名前付きキャプチャ
/\<strong\>(?<tag>.+)\<\/strong\>/ =~ "<div><strong>Hello!!</strong></div>"
puts tag

puts "==============================="
