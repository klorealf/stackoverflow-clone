def own_question?(question)
  logged_in? && question.user == current_user
end
