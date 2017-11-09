class User < ApplicationRecord
  has_many :questions, dependent: :destroy
  has_many :answers, dependent: :destroy
  has_many :comments, dependent: :destroy

  has_many :question_comments, through: :questions, source: :comments
  has_many :answers_comments, through: :answers, source: :comments
  has_many :question_votes, through: :questions, source: :votes
  has_many :answers_votes, through: :answers, source: :votes
  has_many :comment_votes, through: :comments, source: :votes

  validates :name, :username, :email, presence: true
  validates :username, :email, uniqueness: :true
# Thought this was cool from a previous assignment does not work yet
  # validates :password_hash, length: {minimum: 2}

  def question_score
    question_score_total = 0
    self.questions.map do |question|
      if question.score != nil
        question_score_total += question.score
      end
    end
    question_score_total
  end

  def question_comment_score
    question_comment_score_total = 0
    self.question_comments.map do |comment|
      if comment.score != nil
        question_comment_score_total += comment.score
      end
    end
    question_comment_score_total
  end

  def answer_score
    answer_score_total = 0
    self.answers.map do |answer|
      if answer.score != nil
        answer_score_total += answer.score
      end
    end
    answer_score_total
  end

  def answer_comment_score
    answer_comment_score_total = 0
    self.answers_comments.map do |comment|
      if comment.score != nil
        answer_comment_score_total += comment.score
      end
    end
    answer_comment_score_total
  end

  def score
    (question_score * 3) + question_comment_score + (answer_score * 2) + answer_comment_score
  end

#############
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
