
e = "我是"
p e.encoding

t = e.force_encoding("ASCII-8BIT")

p t.encoding

g = t.force_encoding("UTF-8").encode("UTF-8")
p g
p g.encoding
