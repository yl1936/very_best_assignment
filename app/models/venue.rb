class Venue < ApplicationRecord
  # Direct associations

  belongs_to :neighborhood

  has_many   :bookmarks,
             dependent: :destroy

  # Indirect associations

  has_many   :dishes,
             through: :bookmarks,
             source: :dish

  has_many   :users,
             through: :bookmarks,
             source: :user

  # Validations

  # Scopes

  def to_s
    created_at
  end
end
