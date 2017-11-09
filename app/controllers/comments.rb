#GET New Comments are created through other routes

#POST New Comments routes here

# post "/upvotes/new" do
#   if logged_in?
#     if params[:voteable_type] == "Question"
#       voteable_object = Question.find_by(id: params[:voteable_id])
#       upvote = Vote.new(voteable: voteable_object, user: current_user, vote_direction: 1)
#       current_vote = Vote.find_by(user: current_user, voteable: voteable_object)
#       if current_vote
#         current_vote.destroy
#       end
#       if upvote.save
#         redirect "/questions/#{voteable_object.id}"
#       else
#         redirect "/"
#       end
#     elsif params[:voteable_type] == "Answer"
#       voteable_object = Answer.find_by(id: params[:voteable_id])
#       answer_question = voteable_object.question
#       upvote = Vote.new(voteable: voteable_object, user: current_user, vote_direction: 1)
#       current_vote = Vote.find_by(user: current_user, voteable: voteable_object)
#       if current_vote
#         current_vote.destroy
#       end
#       if upvote.save
#         redirect "/questions/#{answer_question.id}/answers/#{voteable_object.id}"
#       else
#         redirect "/"
#       end
#     else
#       voteable_object = Comment.find_by(id: params[:voteable_id])
#       upvote = Vote.new(voteable: voteable_object, user: current_user, vote_direction: 1)
#       current_vote = Vote.find_by(user: current_user, voteable: voteable_object)
#       if current_vote
#         current_vote.destroy
#       end
#       if upvote.save
#           redirect "/"
#       else
#           redirect "/"
#       end
#     end
#   end
#   redirect "/"
# end
