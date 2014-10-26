j = "るびぃ"
p j.encoding
p j.length
p j.bytesize

e = j.encode("EUC-JP")
p e.encoding

p j + e rescue $!

p "ruby".encode("UTF-8") + "ist".encode("EUC-JP")

p j.force_encoding("ascii-8bit")
p j.encoding

p j.encode("UTF-8") rescue $!

require 'kconv'
j = j.toutf8
p j
p j.encoding

p NKF.nkf( "-w -mo", j )
