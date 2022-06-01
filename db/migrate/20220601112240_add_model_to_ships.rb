class AddModelToShips < ActiveRecord::Migration[7.0]
  def change
    add_column :ships, :model, :string
  end
end
