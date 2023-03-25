# TODO: Write a seed
require "faker"
5.times do
  User.create(username: Faker::Internet.user('username', 'email'))
end
User.all.each do |user|
  (5..10).to_a.sample.times do
    Post.create(title: Faker::Hacker.say_something_smart, url: Faker::Internet.url, user: user)
  end
end
