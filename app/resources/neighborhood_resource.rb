class NeighborhoodResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :name, :string
  attribute :city, :string
  attribute :state, :string

  # Direct associations

  has_many   :venues

  # Indirect associations

end
