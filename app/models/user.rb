class User < ActiveRecord::Base
  validates :email, { presence: true, uniqueness: true }
  validates :first_name, :last_name, { presence: true }
  validates :hashed_password, { presence: true }
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create

  has_many :questions
  has_many :answers
  has_many :comments, as: :commentable
  has_many :votes, as: :votable

  def password
    @password ||= BCrypt::Password.new(hashed_password)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.hashed_password = @password
  end

  def self.authenticate(email, password)
    user = User.find_by(email: email)
    if user && user.password == password
      return user
    else
      return nil
    end
  end

end
