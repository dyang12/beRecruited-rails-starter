class CreateUserTable < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :user_id, :unique => true, :null => :false
      t.string :username, :null => false
      t.integer :total_points, :null => false
      
      t.timestamps
    end
  end
end
