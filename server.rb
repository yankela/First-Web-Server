# require 'sinatra'
# require 'nokogiri'
# require 'httparty'
#
# get '/:query' do
#   url = "https://miami.craigslist.org/search/jjj?query=#{params[:query]}"
#   response = HTTParty.get(url)
#
#   dom = Nokogiri::HTML(response.body)
#
#
#   jobs_array = dom.css(".hdrlnk").map do | a |
#     a.content + "<br/>"
#   end
# end
#
# puts "Let's Go!"

require 'sinatra'
require 'nokogiri'
# require 'httparty'

get '/:query=/:query' do
  url = "https://miami.craigslist.org/search/jjj?query=#{params[:query]}"
  response = HTTParty.get(url)

  dom = Nokogiri::HTML(response.body)


  jobs_array = dom.css(".hdrlnk").map do | a |
    a.content + "<br/>"
  end
end
get '/' do
  "Hello World"
end
