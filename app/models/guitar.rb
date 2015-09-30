class Guitar
  include Mongoid::Document
  belongs_to :user
  field :make, type: String
  field :model, type: String
  field :year, type: Integer
end
