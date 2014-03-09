module LeaderboardHelper
  def populate_teams
    teams = JSON.parse(RestClient.get("http://br-interview-api.heroku.com/teams"))
    
    teams.each do |team|
      team_hash = team["team"]
      
      Team.create(:team_id => team_hash["id"], 
                  :location => team_hash["address"], 
                  :nickname => team_hash["nick"], 
                  :abrev => team_hash["short"])
    end
  end
  
  def populate_users
    users = JSON.parse(RestClient.get("http://br-interview-api.heroku.com/users"))
    
    users.each do |user|
      user_hash = user["user"]
      name = user_hash["first_name"] + " " + user_hash["last_name"]
      
      User.create(:user_id => user_hash["id"], 
                  :username => name, 
                  :total_points => user_hash["points"])
    end
  end
end
