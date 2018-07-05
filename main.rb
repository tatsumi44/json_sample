require 'bundler/setup'
Bundler.require
require 'sinatra'
require 'sinatra/reloader'
require 'uri'
require 'net/http'



get '/' do
  base_url = 'http://wikipedia.simpleapi.net/api?output=html&keyword='
  if params[:keyword]
    keyword = params[:keyword]
    url = URI.parse(base_url + keyword)
    @result = Net::HTTP.get(url).force_encoding('utf-8')
  end

  erb :main
end