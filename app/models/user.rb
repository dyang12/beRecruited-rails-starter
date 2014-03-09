class User < ActiveRecord::Base
  attr_accessible :user_id, :username, :total_points
  
  validates :user_id, :uniqueness => :true
  validates :user_id, :username, :total_points, :presence => true
  
  has_many :favorites, 
    :class_name => "Favorite", 
    :primary_key => :user_id, 
    :foreign_key => :user_id
    
  has_many :favorite_teams, :through => :favorites, :source => :team
end
