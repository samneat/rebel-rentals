class AddCrewSpeedToShips < ActiveRecord::Migration[7.0]
  def change
    add_column :ships, :crew, :string
  end
end
