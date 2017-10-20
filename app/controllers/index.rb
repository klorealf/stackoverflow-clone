get '/' do
  @questions = Question.order('created_at DESC')
  current_user
  erb :"index"
end
