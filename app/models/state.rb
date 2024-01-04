class State < ApplicationRecord

  # Geocoder

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  # Cloudinary

  has_one_atthached :photo
end
