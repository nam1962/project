require "json"
require "rest-client"

require "open-uri"
require_relative "../app/models/post"

# TODO: Write a seed to insert 10 posts in the database fetched from the Hacker News API.
url = "https://hacker-news.firebaseio.com/v0/topstories.json"
posts_serialized = URI.open(url).read
posts_list = JSON.parse(posts_serialized)
posts_list.take(10).each do |number|
  url = "https://hacker-news.firebaseio.com/v0/item/#{number.to_i}.json"
  post_serialized = URI.open(url).read
  post = JSON.parse(post_serialized)
  post = Post.new(
    title: post["title"],
    url: post["url"],
    votes: post["score"]
  )
  post.save
end
# TODO: Write a seed to insert 10 posts in the database fetched from the Hacker News API.
