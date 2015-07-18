test = :test
# p test.class.superclass.methods.sort

p test.methods - test.class.superclass.methods
p test.to_s == "test"
p test == :test


p Struct.superclass
p Struct.methods - Object.methods

People = Struct.new(:name , :age)
p People
p People.superclass

p People.new("test", "a", "3")