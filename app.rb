# require 'sinatra'
# require 'sinatra/reloader'
# require './lib/volunteer'
# require './lib/project'
# require 'pg'
# require 'rspec'
# require 'pry'
#
# also_reload('lib/**/*.rb')
#
# get('/') do
#   erb(:index)
# end
#
# post("/volunteer") do
#   description = params.fetch("description")
#   list_id = params.fetch("list_id").to_i()
#   @volunteer = Volunteer.find(list_id)
#   @task = Task.new({:description => description, :list_id => list_id})
#   @task.save()
#   erb(:task_success)
# end
