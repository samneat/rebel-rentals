class AddLengthToShips < ActiveRecord::Migration[7.0]
  def change
    add_column :ships, :length, :string
  end
end
