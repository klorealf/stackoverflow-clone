require 'faker'
10.times do |n|
  Tweet.create(subject: Faker::Company.buzzword, body: Faker::Lorem.sentence(3), username: Faker::Internet.user_name)
end
