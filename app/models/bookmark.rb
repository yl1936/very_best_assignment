class Bookmark < ApplicationRecord
  # Direct associations

  belongs_to :dish

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    dish.to_s
  end

end
