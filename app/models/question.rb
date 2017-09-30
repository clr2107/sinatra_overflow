class Question < ActiveRecord::Base
  validates :question_text, { presence: true }

  belongs_to :user
  has_many :answers
  has_many :comments, as: :commentable
  has_many :votes, as: :votable

  def vote_sum
    total = 0
    votes.each do |vote|
      total += vote.vote
    end
    return total
  end

end
