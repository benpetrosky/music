require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require("./lib/cd")

get('/') do
  @cds = Cd.all()
  erb(:index)
end

post("/cd") do
  cd = params.fetch("cd")
  album = Cd.new(cd)
  album.save()
  erb(:success)
end
