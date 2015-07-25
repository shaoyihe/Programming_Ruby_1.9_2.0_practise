#http://stackoverflow.com/questions/31609347/merge-array-of-hashes-with-addition
hash = [{"user"=>"10910", "count"=>"2"},
	{"user"=>"10910", "count"=>"8"}, 
	{"user"=>"10910", "count"=>"4"}, 
	{"user"=>"11245", "count"=>"3"}, 
	{"user"=>"10910", "count"=>"2"}, 
	{"user"=>"10910", "count"=>"7"}, 
	{"user"=>"11245", "count"=>"2"}, 
	{"user"=>"10910", "count"=>"1"}, 
	{"user"=>"13869", "count"=>"2"}]

result =[]
(hash.each_with_object(Hash.new(0)) do |item, result|
 	result[item["user"]] += Integer(item["count"])
end).each{|k,v| result << {"user"=>k, "count"=>v}}
p result

p (hash.each_with_object(Hash.new(0)) do |item, result|
 	result[item["user"]] += Integer(item["count"])
end).map { |k,v,x|  {"user"=>k, "count"=>v} }


