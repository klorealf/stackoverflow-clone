class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :commentable, polymorphic: :true
  has_many :votes, as: :voteable


  validates :body, :user_id, :commentable_id, presence: :true
end
