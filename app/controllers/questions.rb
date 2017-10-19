get '/' do
  redirect '/questions'
end

#will show a list of all questions
get '/questions' do
  @questions = Question.order('created_at DESC')
  @ans_num = {}
  @questions.each do |question|
    @ans_num[question.id] = question.answers.count
  end

  @names = {}
  @usernames = {}
  @questions.each do |question|
    user = User.find(question.user_id)
    @usernames[question.id] = user.username
    @names[question.id] = user.name
  end
  erb :'question/index'
end

#will provide form for creating new question
get '/questions/new' do
  erb :'question/new'
end

post '/questions/new' do
  question_user = User.find_by(id: params[:id])
  question = Question.create(user_id: question_user.id, title: params[:title], text: params[:body])
  redirect '/questions/#{question.id}'
end

#show individual question
get '/questions/:question_id' do
 @question = Question.find(params[:question_id])
 @question_user = @question.user
 @question_answers = @question.answers
 erb :"question/show"
end

