class Zipcode
  include Mongoid::Document

  field :code, type: String
  field :city, type: String
  field :loc, type: Array
  field :population, type: Integer
  field :state, type: String

  validates :code, presence: true
  validates :city, presence: true
  validates :population, presence: true
  validates :state, presence: true
end