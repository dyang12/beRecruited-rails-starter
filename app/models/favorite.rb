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
    # TODO: Given a team, return the top n users
  end
end
