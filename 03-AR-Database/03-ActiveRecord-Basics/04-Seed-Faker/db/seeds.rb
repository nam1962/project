require "faker"
# TODO: Write a seed to insert 100 posts in the database
100.times do
  Post.create(title: Faker::Hacker.say_something_smart, url: Faker::Internet.url, votes: (1..500).to_a.sample)
end
