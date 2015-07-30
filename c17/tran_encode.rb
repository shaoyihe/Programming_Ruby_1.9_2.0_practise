
def test_encode str
	p "*"*10 
	p str
	p str.encoding
	p str.bytes
	p str.bytesize
end

s = "我是"
test_encode s

s_encode = s.encode("GBK")
test_encode s_encode

s_encode = s.encode("ASCII" ,:undef => :replace)
test_encode s_encode