class State < ApplicationRecord

  # Geocoder

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  # Cloudinary

  has_one_attached :photo

  # Geocoder
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  # PG Search
  include PgSearch::Model

  pg_search_scope :global_search,
  against: [ :name ],
  using: {
    tsearch: { prefix: true }
  }

end
