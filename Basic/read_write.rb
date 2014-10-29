TMP="/tmp/test.txt"

open(TMP, "w"){ |f|f.puts "あいうえお".encode("Shift_JIS") }

p File.read(TMP)

unmatched = open(TMP, &:read)
p unmatched
p unmatched.encoding

unmatched.force_encoding("Shift_JIS").encode!("UTF-8")
p unmatched
p unmatched.encoding

sjis = open(TMP, "r:Shift_JIS", &:read)
p sjis
p sjis.encoding
p sjis.encode("UTF-8")

utf8 = open(TMP, "r:Shift_JIS:UTF-8", &:read)
p utf8
p utf8.encoding

require 'kconv'

p File.read(TMP).toutf8
NKF.nkf("-wmO", File.read(TMP))
# File.unlink TMP

