puts :a
p :a.class.to_s
p :ass.to_s

hash = {
	:one => :two,
	:two => "three"
}
puts hash
puts hash[hash[:one]]
puts hash[:three].class

inst_section = {
	cello: 'string',
	clarinet: 'woodwind',
	drum: 'percussion',
	oboe: 'woodwind',
	trumpet: 'brass',
	violin: 'string'
}

hash2 ={
	one: :two,
	two: "three"
}
p hash == hash2