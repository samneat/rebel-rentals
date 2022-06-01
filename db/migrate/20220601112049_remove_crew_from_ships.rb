class RemoveCrewFromShips < ActiveRecord::Migration[7.0]
  def change
    remove_column :ships, :crew, :integer
  end
end
