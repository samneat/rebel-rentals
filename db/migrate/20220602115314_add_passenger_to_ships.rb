class AddPassengerToShips < ActiveRecord::Migration[7.0]
  def change
    add_column :ships, :passengers, :string
  end
end
