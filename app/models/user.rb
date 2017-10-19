class User < ApplicationRecord
  has_many :answers
  has_many :questions

  validates :name, :username, :email, :password, presence: true
  validates :username, :email, uniqueness: :true

  include BCrypt

  #creating a user password
    def password
    @password ||= Password.new(password_hash)
  end

#creating the password hash
  def password=(new_password)
    @password = Password.create(new_password)
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
