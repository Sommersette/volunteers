require 'sinatra'
require 'sinatra/reloader'
require './lib/volunteer'
require 'pry'

also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end
