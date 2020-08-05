class AddPhotoToSpaces < ActiveRecord::Migration[6.0]
  def change
    add_column :spaces, :photo, :string
  end
end
