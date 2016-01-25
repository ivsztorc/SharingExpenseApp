class Currency < ActiveRecord::Base
  belongs_to :trip
    def currency_name
       currency = Money.new(1000, "USD").currency
       currency.iso_code #=> "USD"
       currency.name     #=> "United States Dollar"
     end
end