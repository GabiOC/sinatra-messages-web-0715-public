# post_message.rb
require "net/http"
require 'uri'
require 'pry'

puts ""
print "Who do you want to message? "
to = gets.chomp
print "Who are you? "
from = gets.chomp

print "Your message: "
content = gets.chomp

puts ""
print "Sending message..."

# Post the message to the server

uri = URI.parse("http://localhost:9292")
params = {to: to, from: from, content: content}
response = Net::HTTP.post_form(uri, params)

if response.message == "OK"
 puts "It worked :)"
else
 puts "Oops, something went wrong :("
end
