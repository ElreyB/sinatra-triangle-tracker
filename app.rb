require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('pry')

get('/') do
  erb(:input)
end

get('/output') do
  @side1 = params.fetch("side1")
  @side2 = params.fetch("side2")
  @side3 = params.fetch("side3")

  triangle = Triangle.new(@side1, @side2, @side3)
binding.pry
  @string_to_display = triangle.triangle_tracker

  erb(:output)
end
