 class LeaderboardController < ApplicationController
  include LeaderboardHelper
  
  def index
    if Team.count == 0
      populate_teams
      populate_users
      populate_favorites
    end
    
    @teams = Team.all
    render :index
  end
end
