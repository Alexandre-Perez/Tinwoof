class CreateDogs < ActiveRecord::Migration[7.0]
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :gender
      t.string :age
      t.string :race
      t.string :height
      t.text :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
