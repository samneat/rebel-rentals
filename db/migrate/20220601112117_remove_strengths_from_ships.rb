class RemoveStrengthsFromShips < ActiveRecord::Migration[7.0]
  def change
    remove_column :ships, :strengths, :string
  end
end
