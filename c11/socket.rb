require 'socket'

client = TCPSocket.open('127.0.0.1',80)
client.send("OPTIONS /~dave/ HTTP/1.0\n\n", 0) # 0 means standard packet


puts client.readlines
# sleep(100)
client.close