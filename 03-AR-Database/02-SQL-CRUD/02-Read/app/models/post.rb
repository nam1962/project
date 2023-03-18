# You can use a global variable, DB, which
# is an instance of SQLite3::Database
# NO NEED TO CREATE IT, JUST USE IT.

class Post
  # TODO
  attr_accessor :title,:url
  attr_reader :id, :votes

  def initialize(attributes = {})
    @id = attributes[:id]
    @title = attributes[:title]
    @url = attributes[:url]
    @votes = attributes[:votes]
  end

  def self.find(id)
    DB.results_as_hash = true
    query = "SELECT * FROM posts WHERE id = ?"
    post = DB.execute(query, id).first
    unless post.nil?
    Post.new({id: post["id"],
      title: post["title"],
      url: post["url"],
      votes: post["votes"]
      })
    end
  end


end
