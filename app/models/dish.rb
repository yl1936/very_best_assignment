class Dish < ApplicationRecord
  # Direct associations

  belongs_to :cuisine

  has_many   :bookmarks,
             :dependent => :destroy

  # Indirect associations

  has_many   :users,
             :through => :bookmarks,
             :source => :user

  # Validations

  # Scopes

  def to_s
    name
  end

end
