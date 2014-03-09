class Team < ActiveRecord::Base
  attr_accessible :team_id, :location, :nickname, :abrev
  
  validates :team_id, :location, :nickname, :abrev, :presence => true
  validates :team_id, :nickname, :abrev, :uniqueness => true
  
  has_many :favorites, 
    :class_name => "Favorite", 
    :primary_key => :team_id, 
    :foreign_key => :team_id
    
  has_many :user_favorites, :through => :favorites, :source => :user
end
