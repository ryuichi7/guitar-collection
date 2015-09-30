class User
  include Mongoid::Document
  has_many :guitars
  has_many :amps
  has_many :pedals
  field :first_name, :type => String
  field :last_name, :type => String
  field :email, :type => String
end