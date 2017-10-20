require 'faker'
require 'pry'

Answer.delete_all
Question.delete_all
User.delete_all


amber = User.create(name: "Amber", username: "amber", email: "a@a.com", password_hash: "1234")
kj = User.create(name: "Kj", username: "kj", email: "kj@k.com", password_hash: "1234")
thomas = User.create(name: "Thomas", username: "thomas", email: "t@t.com", password_hash: "1234")
phil = User.create(name: "Phil", username: "phil", email: "p@p.com", password_hash: "1234")

q1 = Question.create(title: "Best Group", body: "What group is the best?", user: amber)
a1 = Answer.create(body: "Thomas's Angles", user: kj, question: q1)
a2 = Answer.create(body: "Thomas's Angles no question", user: thomas, question: q1)
a3 = Answer.create(body: "The Instructors think its Thomas's Angels, but shhhh", user: phil, question: q1)

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
