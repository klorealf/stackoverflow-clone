class Vote < ApplicationRecord
  belongs_to :voteable, :polymorphic: :true

  validates :body, :user_id, presence: :true
end
