Vote.delete_all
Comment.delete_all
Answer.delete_all
Question.delete_all
User.delete_all


amber = User.create(name: "Amber", username: "amber", email: "a@a.com", password_hash: "1234")
kj = User.create(name: "Kj", username: "kj", email: "kj@k.com", password_hash: "1234")
thomas = User.create(name: "Thomas", username: "thomas", email: "t@t.com", password_hash: "1234")
phil = User.create(name: "Phil", username: "phil", email: "phil@p.com", password_hash: "1234")
najah = User.create(name: "Najah", username: "najah", email: "n@n.com", password_hash: "1234")
penn = User.create(name: "Penn", username: "penn", email: "p@p.com", password_hash: "1234")
chris = User.create(name: "Chris", username: "chris", email: "c@c.com", password_hash: "1234")


#Q - QV    A  -  AV     C  --  CV
q1 = Question.create(title: "Best Group", body: "What group is the best?", user: amber)
  # For testing this question should have a current_score of 3
    Vote.create(user: najah, voteable: q1, vote_direction: 1)
    Vote.create(user: thomas, voteable: q1, vote_direction: 1)
    Vote.create(user: chris, voteable: q1, vote_direction: 1)
    Vote.create(user: penn, voteable: q1, vote_direction: -1)
    Vote.create(user: phil, voteable: q1, vote_direction: 1)
          a10 = Answer.create(body: "Thomas's Angles", user: kj, question: q1)
                Vote.create(user: amber, voteable: a10, vote_direction: 1)
                      c10 = Comment.create(user: thomas, commentable: a10, body: "I completly agree with Kj and Amber!")
                              Vote.create(user: amber, voteable: c10, vote_direction: 1)
                              Vote.create(user: najah, voteable: c10, vote_direction: 1)
                      c11 = Comment.create(user: penn, commentable: a10, body: "Shocker, Thomas's Angels think Thomas's Angles are the best group")
                              Vote.create(user: amber, voteable: c11, vote_direction: -1)
                              Vote.create(user: najah, voteable: c11, vote_direction: -1)
                              Vote.create(user: chris, voteable: c11, vote_direction: 1)
          a11 = Answer.create(body: "Thomas's Angles no question", user: thomas, question: q1)
          a12 = Answer.create(body: "The Instructors think its Thomas's Angels, but shhhh", user: phil, question: q1)

q2 = Question.create(title: "Best Pizza?", body: "Where can I grab a great slice?", user: thomas)
  a4 = Answer.create(body: "Underground no question", user: phil, question: q2)
  a5 = Answer.create(body: "My backyard", user: thomas, question: q2)

q3 = Question.create(title: "Waviest?", body: "Who is the waviest?", user: amber)









# q1 = Question.create(title: "Best Group", body: "What group is the best?", user: amber)

# a1 = Answer.create(body: "Thomas's Angles", user: kj, question: q1)

# q2 = Question.create(title: "Music", body: "What artist has the best vocals?", user: amber)

# users = 10.times.map do
#   User.create!(:name => Faker::Name.name,
#                :username => Faker::Internet.user_name,
#                :email => Faker::Internet.email,
#                :password_hash => 'password')
# end

# #create a question for each user
# users.each do |user|
#   user.questions.create!(:title => Faker::Lorem.sentence,
#                          :body =>Faker::Lorem.paragraphs(1).first)
# end

# #create answers
# question_num = Question.first.id

# users.each do |user|
#   user.answers.create!(:body =>Faker::Lorem.paragraphs(1).first,
#                        :question_id => question_num)
# question_num += 1

# end
