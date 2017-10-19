Answer.delete_all
Question.delete_all
User.delete_all

amber = User.create(name: "Amber", username: "amber", email: "a@a.com", password: "1234")
kj = User.create(name: "Kj", username: "kj", email: "kj@k.com", password: "1234")

q1 = Question.create(title: "Best Group", body: "What group is the best?", user: amber)

a1 = Answer.create(body: "Thomas's Angles", user: kj, question: q1)