class Favorite < ActiveRecord::Base
  attr_accessible :user_id, :team_id, :curr_points, :last_points
  
  validates :user_id, :team_id, :curr_points, :last_points, :presence => true
  
  belongs_to :user, 
    :class_name => "User", 
    :primary_key => :user_id, 
    :foreign_key => :user_id
  
    belongs_to :team, 
      :class_name => "Team", 
      :primary_key => :team_id, 
      :foreign_key => :team_id
  
  def self.top(team, limit = TOP_LIMIT)
    leaderboard_query = <<-SQL
      SELECT
        u.username, f.curr_points, f.last_points
      FROM
        users u
      JOIN (
        SELECT
          *
        FROM
          favorites
        WHERE 
          favorites.team_id = :team_id
        ORDER BY
          favorites.curr_points DESC
        LIMIT 5
      ) f
      ON u.user_id = f.user_id
    SQL
    
    leaders = User.find_by_sql([leaderboard_query, {:team_id => team.team_id}])
  end
end
