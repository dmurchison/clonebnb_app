module Countriable

  def country_name
    country = ISO3166::Country[country_code]
    country&.name
  end

end

