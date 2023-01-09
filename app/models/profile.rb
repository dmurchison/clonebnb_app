class Profile < ApplicationRecord
  include Countriable
  
  geocoded_by :address
  after_validation :geocode, if: -> { latitude.blank? && longitude.blank? }
  
  belongs_to :user
  
  def address
    [state, country_name].compact.join(', ')
  end

  def full_name
    [first_name, last_name].compact.join(' ')
  end

end
