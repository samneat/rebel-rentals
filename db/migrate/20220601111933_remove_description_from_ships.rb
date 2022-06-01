class RemoveDescriptionFromShips < ActiveRecord::Migration[7.0]
  def change
    remove_column :ships, :description, :string
  end
end
