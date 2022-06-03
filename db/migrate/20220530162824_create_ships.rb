class CreateShips < ActiveRecord::Migration[7.0]
  def change
    create_table :ships do |t|
      t.string :name
      t.string :model
      t.string :crew
      t.string :cost
      t.string :length
      t.string :atmospheric_speed
      t.string :passengers
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
