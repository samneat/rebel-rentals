class AddAtmosphericSpeedToShips < ActiveRecord::Migration[7.0]
  def change
    add_column :ships, :atmospheric_speed, :string
  end
end
