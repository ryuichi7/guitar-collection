class Pedal
  include Mongoid::Document
  belongs_to :user
  field :make, type: String
  field :model, type: String
end
