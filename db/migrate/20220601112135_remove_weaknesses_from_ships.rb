class RemoveWeaknessesFromShips < ActiveRecord::Migration[7.0]
  def change
    remove_column :ships, :weaknesses, :string
  end
end
