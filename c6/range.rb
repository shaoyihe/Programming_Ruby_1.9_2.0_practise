require_relative("../c0/util")


p (1..10).each{|item| print item, " "}.all_super_class


p (('a'..'z').to_a << ('A'..'Z').to_a).join

class Odd
	attr_reader :val
	def initialize(value)
		@val = value
	end
	def <=> other
		@val <=> other.val
	end

	def succ
		Odd.new(@val + 2)
	end

	def to_s
		@val
	end
end	

p Odd.new(3).to_s
p (Odd.new(3) .. Odd.new(10)).to_a.to_s