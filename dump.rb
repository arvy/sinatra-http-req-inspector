require 'sinatra'

set :bind, '0.0.0.0'

post '/' do
    puts "body: #{ request.body.read }"              # request body sent by the client (see below)
    puts "method: #{ request.request_method }"   # "GET"
    puts "content_length: #{request.content_length }"   # length of request.body
    puts "media_type: #{request.media_type }"       # media type of request.body
    puts "form_data?: #{request.form_data? }"       # false
#    request.env               # raw env hash handed in by Rack
end
