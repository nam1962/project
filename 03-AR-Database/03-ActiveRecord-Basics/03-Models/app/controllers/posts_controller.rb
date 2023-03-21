require_relative "../views/posts_view"
require_relative "../models/post"

class PostsController
  def initialize
    @view = PostsView.new
  end

  def index
    # DO NOT WRITE SQL QUERIES
    # TODO: gather all posts from the database
    # TODO: give them to the view to be printed
    posts = Post.all
    @view.display_all(posts)
  end

  def create
    # DO NOT WRITE SQL QUERIES
    # TODO: create a post
    title = @view.ask_user_for("title")
    url = @view.ask_user_for("url")
    post = Post.create(title:, url:)
  end

  def update
    # DO NOT WRITE SQL QUERIES
    # TODO: update a post
    index
    id = @view.ask_user_for("id").to_i
    post = Post.find(id)
    post.title = @view.ask_user_for("new title")
    post.url = @view.ask_user_for("new url")
    post.save
  end

  def destroy
    # DO NOT WRITE SQL QUERIES
    # TODO: destroy a post
    index
    id = @view.ask_user_for("id").to_i
    post = Post.find(id)
    post.destroy
  end

  def upvote
    # DO NOT WRITE SQL QUERIES
    # TODO: increment the `votes` column for a post
    index
    id = @view.ask_user_for("id").to_i
    post = Post.find(id)
    post.votes += 1
    post.save
  end
end
