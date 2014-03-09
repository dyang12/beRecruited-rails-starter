class CreateTeamTable < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.integer :team_id, :unique => true, :null => false
      t.string :location, :unique => true, :null => false
      t.string :nickname, :unique => true, :null => false
      t.string :abrev, :unique => true, :null => false
      
      t.timestamps
    end
  end
end
