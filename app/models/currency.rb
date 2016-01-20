class Currency < ActiveRecord::Base
    def currency_name
       currency = Money.new(1000, "USD").currency
       currency.iso_code #=> "USD"
       currency.name     #=> "United States Dollar"
     end
end

