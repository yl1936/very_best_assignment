class BookmarkResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :dish_id, :integer
  attribute :venue_id, :integer
  attribute :user_id, :integer
  attribute :notes, :string

  # Direct associations

  belongs_to :venue

  belongs_to :dish

  # Indirect associations

end
