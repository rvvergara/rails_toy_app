require 'rest-client'
require 'json'

url = 'http://localhost:3000/users'
response = RestClient.get url

RestClient.post url, { user: { name: 'Microverse', email: 'micro@verse.org' }}.to_json, { content_type: :json, accept: :json }

id = 5
RestClient.delete url +'/' + id.to_s

puts response.code