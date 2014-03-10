class FavoritesController < ApplicationController
  def index
    team = Team.find(params[:team_id])
    leaders = Favorite.top(team, 5)
    
    render :json => leaders
  end
end
