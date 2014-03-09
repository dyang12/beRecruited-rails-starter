 class LeaderboardController < ApplicationController
  include LeaderboardHelper
  
  def index
    populate_teams
    populate_users
    
    @teams = Team.all
    render :index
  end
end
