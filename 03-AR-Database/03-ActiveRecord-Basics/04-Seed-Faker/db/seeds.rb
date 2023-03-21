require "faker"
# TODO: Write a seed to insert 100 posts in the database
Post.create(title: Faker::Hacker.say_something_smart, url: Internet.url, votes: 2)

