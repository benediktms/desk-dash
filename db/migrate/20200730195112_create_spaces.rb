class CreateSpaces < ActiveRecord::Migration[6.0]
  def change
    create_table :spaces do |t|
      t.string :price
      t.string :number_of_desks
      t.references :user, null: false, foreign_key: true
      t.string :address
      t.string :latitude
      t.string :longitude
      t.boolean :fiber_optic
      t.boolean :catering

      t.timestamps
    end
  end
end
