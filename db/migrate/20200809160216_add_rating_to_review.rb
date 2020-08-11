class AddRatingToReview < ActiveRecord::Migration[6.0]
  def change
    add_column :reviews, :rating, :integer, :limit => 5 #By default SQL String limit 255 character
    #Ex:- :limit => 40
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
