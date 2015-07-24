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


下面这段程序中，我用batch.put向DynamoDB中导入数组中的hash对象

    ngrid=100
    putItems = Array.new(ngrid)
...
    putItems[i]={:latitude => str[j], :longitude => str[j+1], :u=>str[j+2]}
...
    batch.put('grb2datatest2', [putItems[1],putItems[2]])

这样完全没有问题，我想将整个数组中的hash对象导入，于是我写了这一句

    batch.put('grb2datatest2',[putItems.join(",")])

当然是错误的，因为这将数组元素转成了字符串，而batch.put需要是的用逗号分开的哈希对象，如下

    batch.put('tablename', [hash1, hash2, hash3, ...]

那我怎么从数组得到用,逗号分开的hash对象写在上面的[]中？谢谢！！