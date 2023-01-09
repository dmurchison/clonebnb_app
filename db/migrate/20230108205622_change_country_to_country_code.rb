class ChangeCountryToCountryCode < ActiveRecord::Migration[7.0]
  def change
    rename_column :properties, :country, :country_code
    rename_column :profiles, :country, :country_code
  end
end
