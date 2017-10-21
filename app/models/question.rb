class Question < ApplicationRecord
  belongs_to :user
  has_many :answers, dependent: :destroy
  has_many :comments, as: :commentable, dependent: :destroy
  has_many :votes, as: :voteable, dependent: :destroy

  validates :title, :body, :user_id, presence: :true
end


def own_question?(question)
  logged_in? && question.user == current_user
end
