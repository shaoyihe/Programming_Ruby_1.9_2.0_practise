pro = IO.popen("help")
p pro.map(&:chomp)