class AddPhotoToCaves < ActiveRecord::Migration[7.1]
  def change
    add_column :caves, :photo, :string
  end
end
