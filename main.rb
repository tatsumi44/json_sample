require 'bundler/setup'
Bundler.require
require 'sinatra'
require 'sinatra/reloader'


get '/' do
  erb :main
end