Math.constants.each{|e| p %Q|#{e.to_s} is #{eval ("Math::#{e.to_s}")}|}

p Object.constants