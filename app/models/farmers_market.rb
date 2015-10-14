class FarmersMarket
  include Mongoid::Document

  field :borough, type: String
  field :market_name, type: String
  field :street_address, type: String
  field :days, type: String
  field :hours, type: String
end


