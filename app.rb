require 'sinatra'
require 'sinatra/reloader'
require './lib/volunteer'
require 'pg'
require 'rspec'
require 'pry'

also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end
