class Question < ApplicationRecord
  validates :question_text, { presence: true }
  validates :user

  belongs_to :user
  has_many :answers
  has_many :comments


end
