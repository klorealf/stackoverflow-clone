class User < ApplicationRecord
  has_many :answers
  has_many :questions

  validates :name, :username, :email, presence: true
  validates :username, :email, uniqueness: :true
end
