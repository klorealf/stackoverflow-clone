# Think about displaying top vote getters for currtain catagories
get "/votes" do
  redirect "/"
end

post "/upvotes/new" do
  if logged_in?
    if params[:votable_type] == "Question"
      voteable_object = Question.find_id(id: params[:votable_id])
    # else  params[:votable_type] == "Answer"
    #   voteable_object = Answer.find_id(id: params[:votable_id])
    end
    binding.pry
        #Put in comment functionality later
    upvote = Vote.new(voteable: voteable_object, user: current_user, vote_direction: 1)
    if upvote.save
      redirect "/"
    else
      redirect "/users/#{current_user.id}"
    end
  end
  redirect "/"
end

# post "/votes/questions/:question_id/upvote" do
# # Need to ajax, current redirect could be jaring
#   if logged_in?
#     question = Question.find_by(id: params[:question_id])
#     up_vote = Vote.new(user: current_user, voteable: question, vote_direction: 1)
#     if up_vote.save
#       redirect "/questions/#{question.id}"
#     else
#     # Fix this redirect as well, possibly put error messaging in as well, like suggestion box and ajax
#       redirect "/"
#     end
#   end
#   redirect "/questions"
# end


# get "/votes/questions/:question_id/downvote" do
#   q upvote
# end
# Do comments Votes once conmments is working properly
