module VoteHelper
  def score
    score_array = []
    self.votes.map { |vote| score_array.push(vote.vote_direction) }
    score_array.reduce(:+)
  end

  def upvotes
    upvote_array = []
    self.votes.map do |vote|
      if vote.vote_direction == 1
        upvote_array.push(vote.vote_direction)
      end
    end
    upvote_array.reduce(:+)
  end

  def downvotes
    downvote_array = []
    self.votes.map do |vote|
      if vote.vote_direction == -1
        downvote_array.push(vote.vote_direction)
      end
    end
    downvote_array.length
  end
end
