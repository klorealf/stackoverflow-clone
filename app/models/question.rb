class Question < ApplicationRecord
  include VoteHelper

  belongs_to :user
  has_many :answers, dependent: :destroy
  has_many :comments, as: :commentable
  has_many :votes, as: :voteable

  validates :title, :body, :user_id, presence: :true
end
