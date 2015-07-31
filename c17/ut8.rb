# encoding: ascii-8bit
original = "我是" # e-acute in ISO-8859-1
p original.bytes.to_a # => [111, 108, 233]
p original.encoding # => #<Encoding:ASCII-8BIT>
p new = original.encode("utf-8", "iso-8859-1")
p new.bytes.to_a # => [111, 108, 195, 169]
p new.encoding # => #<Encoding:UTF-8>