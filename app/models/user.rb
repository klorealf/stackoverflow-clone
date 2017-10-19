class User < ApplicationRecord
  has_many :answers
  has_many :questions

  validates :name, :username, :email, :password, presence: true
  validates :username, :email, uniqueness: :true
end
