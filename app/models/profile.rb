class Profile < ApplicationRecord
  belongs_to :user

  geocoded_by :address
  after_validation :geocode, if: -> { latitude.blank? && longitude.blank? }

  def address
    [state, country].compact.join(', ')
  end
end
