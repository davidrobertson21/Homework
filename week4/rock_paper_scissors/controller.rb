require ('sinatra')
require ("sinatra/contrib/all")
require("pry-byebug")
require_relative ("./models/game")

get "/" do
  erb (:home)
end


get "/game/:option1/:option2" do
  rockpaperscissors = RockPaperScissors.new(params[:option1], params[:option2])
  @rockpaperscissors = rockpaperscissors.game()
  erb(:result)
end