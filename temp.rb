def weather(name)
require 'net/http'
require 'json'
params = {
  :access_key => "63d0331aeb87f79e6da1282dcf66fcb1",
  :query => "#{name}"
}
uri = URI('http://api.weatherstack.com/current')
uri.query = URI.encode_www_form(params)
json = Net::HTTP.get(uri)
api_response = JSON.parse(json)
puts "Current temperature in #{api_response['location']['name']} is #{api_response['current']['temperature']  }"
end
name = ""
name = gets
weather(name)