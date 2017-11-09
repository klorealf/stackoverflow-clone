class Comment < ApplicationRecord
  include VoteHelper

  belongs_to :user
  belongs_to :commentable, polymorphic: :true
  has_many :votes, as: :voteable


  validates :body, :user_id, :commentable_id, presence: :true
end
