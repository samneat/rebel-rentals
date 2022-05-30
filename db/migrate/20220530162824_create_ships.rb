class CreateShips < ActiveRecord::Migration[7.0]
  def change
    create_table :ships do |t|
      t.string :name
      t.text :description
      t.string :weapons
      t.integer :crew
      t.string :strengths
      t.string :weaknesses
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
