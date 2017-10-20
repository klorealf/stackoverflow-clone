get "/answers" do
  # Do not believe we are going to need this page
  "Answers Home Page"
end

get "/answers/new" do
  erb :"answers/new"
end

get "/answers/:id" do
  @answer = Answer.find_by(id: params[:id])
  erb :"answers/show"
end

# post "/answers" do
#   redirect "/" unless logged_in?
#   @answer = Answer.new(body: params[answer][body],
#                        user: = current_user

#                         )
#   if @answer.save
#     redirect ""
# end

delete "/answers" do
  "delete answer"
end
