a = []
5.times{|item| a << item}

p a
p a[1]
p a[1 , 3]
p a[-2 , 3]	
p a[1 .. 3]
p a
p a[-1]
p a[-1 .. -2]
a[100] = 10
p a

b = 0..4
p b
p b.class