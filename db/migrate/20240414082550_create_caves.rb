class CreateCaves < ActiveRecord::Migration[7.1]
  def change
    create_table :caves do |t|
      t.string :name
      t.text :description
      t.text :menu
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
