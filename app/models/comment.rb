class Comment < ApplicationRecord
  validates :user
  validates :comment_text { presence: true }

  belongs_to :commentable, polymorphic: true
  belongs_to :answer
  belongs_to :user



end
