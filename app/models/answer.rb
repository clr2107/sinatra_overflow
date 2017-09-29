class Answer < ApplicationRecord
  validates :answer_text, { presence: true }
  validates :user
  validates :question

  belongs_to :question
  belongs_to :user
  has_many :comments
  has_many :votes

end
