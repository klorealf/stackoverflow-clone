
Variables declared in " get "questions" " think their migh be a easier way to do this
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

<!--
    <textarea name="question[body]" class="textarea rows='10' cols='100' input input-round"><%= @question.try(:body) %></textarea>
    <br>
 -->

current_user
