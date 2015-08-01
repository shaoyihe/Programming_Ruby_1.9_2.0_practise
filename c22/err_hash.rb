o_s = "test some"
o_a = %w(test )
o_h ={o_s => "1" , o_a => "2"}
p o_h[o_s]
p o_h[o_a]

puts local_variables.map { |e| "#{e.to_s} : "+ eval("#{e.to_s}").to_s }

p "*"*100
o_s.upcase!
o_a<<"test2"
p o_h[o_s]
p o_h[o_a]

puts local_variables.map { |e| "#{e.to_s} : "+ eval("#{e.to_s}").to_s }
o_h.rehash

puts local_variables.map { |e| "#{e.to_s} : "+ eval("#{e.to_s}").to_s }

p "*"*100
p o_h[o_s]
p o_h[o_a]

puts local_variables.map { |e| "#{e.to_s} : "+ eval("#{e.to_s}").to_s }

