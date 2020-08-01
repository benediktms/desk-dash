class AddNameToSpaces < ActiveRecord::Migration[6.0]
  def change
    add_column :spaces, :name, :string
  end
end
