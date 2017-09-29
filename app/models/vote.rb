class Vote < ApplicationRecord
  validates :user
  validates :vote { presence: true }

  belongs_to :votable, polymorphic: true
  belongs_to :user
end
