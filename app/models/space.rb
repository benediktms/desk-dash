class Space < ApplicationRecord
  belongs_to :user
  has_many :reviews, dependent: :destroy
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch::Model
  pg_search_scope :search_by_name,
                  against: :name,
                  associated_against: {
                    user: :name
                  },
                  using: {
                    tsearch: { prefix: true }
                  }
end
