#will show a list of all questions
get '/questions' do
  @questions = Question.order('created_at DESC')
  # There were variables decleared here that I think can possibly be better achieved using active record, put code in scrap_paper.md
  erb :'question/index'
end

#will provide form for creating new question
get '/questions/new' do
  redirect "/" unless logged_in?
  erb :'question/new'
end

post '/questions' do
  # current_user
  # question_user = User.find_by(id: params[:id])
  question = Question.new(user_id: current_user.id, title: params[:question][:title], body: params[:question][:body])
  if question.save
    redirect "/questions/#{question.id}"
  else
    # Put error messaging in
    redirect '/questions/new'
  end
end

#show individual question
get '/questions/:question_id' do
 @question = Question.find(params[:question_id])
 @question_user = @question.user
 @question_answers = @question.answers
 erb :"question/show"
end

get "/questions/:question_id/answers" do
  question = Question.find_by(id: params[:question_id])
  redirect "/questions/#{question.id}"
end

get "/questions/:question_id/answers/new" do
  redirect "/" unless logged_in?
  @question = Question.find_by(id: params[:question_id])
  erb :"answers/new"
end





