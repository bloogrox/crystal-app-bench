require "redis"
require "http/server"


redis = Redis.new "redis"


server = HTTP::Server.new do |context|
  context.response.content_type = "text/plain"
  val = redis.incr("counter")
  context.response.print "Hello world, got #{context.request.path} #{val}!"
end

puts "Listening on http://0.0.0.0:80"

server.listen("0.0.0.0", 80)
