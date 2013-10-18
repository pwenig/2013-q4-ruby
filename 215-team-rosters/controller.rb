require './davinci-sinatra.rb'

get "/" do
  @teams = Team.order(:id).all
  halt erb(:teams)
end

get "/team/:color" do
  color = params[:color]
  @team = Team.where(color: color).first
  @members = Member.where(team_id: @team.id).all
  halt erb(:members)
end
