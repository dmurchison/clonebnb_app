class Property < ApplicationRecord
  include Countriable

  CLEANING_FEE = 5_000.freeze
  CLEANING_FEE_MONEY = Money.new(CLEANING_FEE)
  SERVICE_FEE_PERCENTAGE = (0.08).freeze

  validates :name, presence: true
  validates :headline, presence: true
  validates :description, presence: true
  validates :address_1, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :country_code, presence: true
  # Only geocoding if not already present! HUGE performance bottleneck!
  after_validation :geocode, if: -> { latitude.blank? && longitude.blank? }

  monetize :price_cents, allow_nil: true
  geocoded_by :address

  has_many_attached :images, dependent: :destroy

  def address
    [state, country_name].compact.join(', ') # for testing
  end

  def default_image
    images.first
  end

end

