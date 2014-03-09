class CreateFavoriteTable < ActiveRecord::Migration 
  def change
    create_table :favorites do |t|
      t.integer :user_id, :null => false
      t.integer :team_id, :null => false
      t.integer :curr_points, :null => false
      t.integer :last_points, :null => false
      
      t.timestamps
    end
  end
end
