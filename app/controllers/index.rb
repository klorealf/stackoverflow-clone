get '/' do
  @questions = Question.all.sort{ |x,y| y.score <=> x.score }
  # @questions = Question.order('created_at DESC')
  current_user
  erb :"index"
end
