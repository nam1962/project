class Post
  attr_reader :id
  attr_accessor :title, :url, :votes

  def initialize(attributes = {})
    @id = attributes[:id]
    @url = attributes[:url]
    @votes = attributes[:votes] || 0
    @title = attributes[:title]
  end

  def self.build(post)
    return unless post

    Post.new(
      {
        id: post["id"],
        title: post["title"],
        url: post["url"],
        votes: post["votes"]
      }
    )
  end

  def self.find(id)
    DB.results_as_hash = true
    query = "SELECT * FROM posts WHERE id = ?"
    post = DB.execute(query, id).first
    # unless post.nil?
    build(post)
    # end
  end

  def destroy
    Post.find(id)
    DB.execute("DELETE FROM posts WHERE id = #{id}")
  end

  # TODO
  def save
    if @id
      DB.execute("UPDATE posts SET title = ?, url = ?, votes = ? WHERE id = ?", @title, @url, @votes, @id)
    else
      DB.execute("INSERT INTO posts (title, url, votes) VALUES (?,?,?)", @title, @url, @votes)
      @id = DB.last_insert_row_id
    end
  end
end
