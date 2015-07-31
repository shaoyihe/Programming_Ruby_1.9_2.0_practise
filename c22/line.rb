END{
	puts "result"
}
p 3.times.map{|t| "pass#{t}"}
BEGIN{
	p "load me"
}

p %i(test one two)

p %i-test one two-

p %q(a (nested) string)