require "cgi"

str = %Q[<link rel="stylesheet" href="/css/inuit.css" >]

p str
p CGI.escape str
p CGI.escapeElement str 
p CGI.escapeHTML str