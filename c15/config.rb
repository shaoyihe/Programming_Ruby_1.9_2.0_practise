require "rbconfig"

include RbConfig

p CONFIG.map{|k,v|[k,v]}