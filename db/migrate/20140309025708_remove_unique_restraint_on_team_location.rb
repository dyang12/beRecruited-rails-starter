class RemoveUniqueRestraintOnTeamLocation < ActiveRecord::Migration
  def change
    remove_column :teams, :location
    add_column :teams, :location, :string
  end
end
