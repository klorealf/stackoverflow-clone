class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :voteable, polymorphic: :true


  validates :voteable_id, :user_id, presence: :true
end
