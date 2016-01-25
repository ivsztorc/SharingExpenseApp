class Country < ActiveRecord::Base
  belongs_to :trip
  def country_name
    country = ISO3166::Country[country_code]
    country.translations[I18n.locale.to_s] || country.name
  end
end