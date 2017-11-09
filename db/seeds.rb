Vote.delete_all
Comment.delete_all
Answer.delete_all
Question.delete_all
User.delete_all


amber = User.create(name: "Amber", username: "amber", email: "a@a.com", password_hash: "1234")
kj = User.create(name: "Kj", username: "kj", email: "kj@k.com", password_hash: "1234")
thomas = User.create(name: "Thomas", username: "thomas", email: "tr@t.com", password_hash: "1234")
phil = User.create(name: "Phil", username: "phil", email: "phil@p.com", password_hash: "1234")
najah = User.create(name: "Najah", username: "najah", email: "n@n.com", password_hash: "1234")
penn = User.create(name: "Penn", username: "penn", email: "p@p.com", password_hash: "1234")
chris = User.create(name: "Chris", username: "chris", email: "c@c.com", password_hash: "1234")
david = User.create(name: "David", username: "david", email: "d@d.com", password_hash: "1234")
andres = User.create(name: "Andreas", username: "andres", email:"a@a.com", password_hash: "1234")
samory = User.create(name: "Samory", username: "samory", email:"s@s.com", password_hash: "1234")
catherine = User.create(name:"Catherine", username: "crice", email: "crice@c.come", password_hash: "1234")
thierry = User.create(name: "Thierry", username: "thierry", email: "t@t.com", password_hash: "1234")
brad = User.create(name: "Brad", username: "bret", email: "b@b.com", password_hash: "1234")
andreas = User.create(name: "Andreas", username: "andreas", email: "n@w.com", password_hash: "1234")

#Q - QV    A/AC  -  AV     AC   -  CV
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
          c11 = Comment.create(user: penn, commentable: q1, body: "Shocker, Thomas's Angels think Thomas's Angles are the best group")
                                  Vote.create(user: amber, voteable: c11, vote_direction: -1)
                                  Vote.create(user: najah, voteable: c11, vote_direction: -1)
                                  Vote.create(user: chris, voteable: c11, vote_direction: 1)
          a11 = Answer.create(body: "Thomas's Angles no question", user: thomas, question: q1)
                  Vote.create(user: amber, voteable: a11, vote_direction: 1)
          a12 = Answer.create(body: "The Instructors think its Thomas's Angels, but shhhh", user: phil, question: q1)
                  Vote.create(user: amber, voteable: a11, vote_direction: 1)
                  Vote.create(user: kj, voteable: a11, vote_direction: 1)
                  Vote.create(user: thomas, voteable: a11, vote_direction: 1)
                  Vote.create(user: penn, voteable: a11, vote_direction: -1)
                  Vote.create(user: chris, voteable: a11, vote_direction: 1)
          c12 = Comment.create(user: najah, commentable: q1, body: "As an alum of Thomas's Angels I could not agree more!")
                                  Vote.create(user: penn, voteable: c12, vote_direction: -1)
                                  Vote.create(user: thomas, voteable: c12, vote_direction: 1)
                                  Vote.create(user: amber, voteable: c12, vote_direction: 1)
                                  Vote.create(user: kj, voteable: c12, vote_direction: 1)
#Q - QV    A/AC  -  AV     AC   -  CV
q2 = Question.create(title: "Best Pizza?", body: "Where can I grab a great slice?", user: thomas)
    Vote.create(user: penn, voteable: q2, vote_direction: 1)
    Vote.create(user: chris, voteable: q2, vote_direction: 1)
          a20 = Answer.create(body: "Underground, no question", user: phil, question: q2)
                  Vote.create(user: penn, voteable: a20, vote_direction: 1)
                  Vote.create(user: chris, voteable: a20, vote_direction: 1)
                  Vote.create(user: najah, voteable: a20, vote_direction: 1)
                          c20 = Comment.create(user: chris, commentable: a10, body: "Thanks for the suggestion!")
                                Vote.create(user: amber, voteable: c20, vote_direction: 1)
                                Vote.create(user: najah, voteable: c20, vote_direction: 1)
          c21 = Comment.create(body: "I heard this local place Sabaro was good.", user: thomas, commentable: q2)
                                Vote.create(user: amber, voteable: c21, vote_direction: -1)
                                Vote.create(user: najah, voteable: c21, vote_direction: -1)
                                Vote.create(user: chris, voteable: c21, vote_direction: -1)
                                Vote.create(user: penn, voteable: c21, vote_direction: -1)
                                Vote.create(user: phil, voteable: c21, vote_direction: -1)
                                Vote.create(user: kj, voteable: c21, vote_direction: -1)
                                Vote.create(user: david, voteable: c21, vote_direction: -1)
                                Vote.create(user: thierry, voteable: c21, vote_direction: -1)
                                Vote.create(user: brad, voteable: c21, vote_direction: -1)
                                Vote.create(user: catherine, voteable: c21, vote_direction: -1)

#Q - QV    A/AC  -  AV     AC   -  CV
q3 = Question.create(title: "Waviest?", body: "Who is the waviest?", user: amber)
  a30 = Answer.create(body: "Chris Bordes", user: brad, question: q3)
                Vote.create(user: amber, voteable: a30, vote_direction: 1)
                Vote.create(user: najah, voteable: a30, vote_direction: 1)
                Vote.create(user: thomas, voteable: a30, vote_direction: 1)
                Vote.create(user: penn, voteable: a30, vote_direction: 1)
                Vote.create(user: phil, voteable: a30, vote_direction: 1)
                Vote.create(user: kj, voteable: a30, vote_direction: 1)
                Vote.create(user: david, voteable: a30, vote_direction: 1)
                Vote.create(user: thierry, voteable: a30, vote_direction: 1)
                Vote.create(user: brad, voteable: a30, vote_direction: 1)
                Vote.create(user: catherine, voteable: a30, vote_direction: 1)
                Vote.create(user: andreas, voteable: a30, vote_direction: 1)




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
