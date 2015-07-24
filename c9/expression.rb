# puts `date`

A = "a"

A = "B"

puts A

p "*"*100

a ,b = *(1..4)

puts "a : #{a},b :#{b}"

puts __dir__

puts $0
puts "*"*100
puts /([^\/]+)$/=~$0

puts $1

puts "*"*100

p defined? puts
p defined? CON

a = ('a'..'z').to_a
p a.zip(1..a.length-1){|local| p local}

p '2'*11