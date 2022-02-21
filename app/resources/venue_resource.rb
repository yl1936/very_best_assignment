class VenueResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :name, :string
  attribute :address, :string
  attribute :neighborhood_id, :integer

  # Direct associations

  belongs_to :neighborhood

  has_many   :bookmarks

  # Indirect associations

  many_to_many :dishes

  many_to_many :users
end
