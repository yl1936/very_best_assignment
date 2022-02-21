class DishResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :name, :string
  attribute :cuisine_id, :integer

  # Direct associations

  belongs_to :cuisine

  has_many   :bookmarks

  # Indirect associations

  many_to_many :users

end
