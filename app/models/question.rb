class Question < ActiveRecord::Base
  validates :question_text, { presence: true }

  belongs_to :user
  has_many :answers
  has_many :comments, as: :commentable
  has_many :votes, as: :votable


end
