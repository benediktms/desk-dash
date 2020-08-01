class CreateSpaces < ActiveRecord::Migration[6.0]
  def change
    create_table :spaces do |t|
      t.string :price
      t.boolean :fiber_optic
      t.integer :number_of_desks
      t.boolean :catering
      t.string :latitude
      t.string :longitude
      t.string :address
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
