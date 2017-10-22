class User < ApplicationRecord
  has_many :answers, dependent: :destroy
  has_many :questions, dependent: :destroy

  validates :name, :username, :email, presence: true
  validates :username, :email, uniqueness: :true
# Thought this was cool from a previous assignment does not work yet
  # validates :password_hash, length: {minimum: 2}

  #creating a user password
  def password
    @password ||= BCrypt::Password.new(password_hash)
  end

#creating the password hash
  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_hash = @password
  end

#authenticating a user
  def self.authenticate(email, password)
    user = User.find_by(email: email)
    return nil unless user

    if user.password == password
      return user
    else
      return nil
    end
  end
end
