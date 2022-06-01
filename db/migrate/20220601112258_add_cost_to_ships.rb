class AddCostToShips < ActiveRecord::Migration[7.0]
  def change
    add_column :ships, :cost, :string
  end
end
