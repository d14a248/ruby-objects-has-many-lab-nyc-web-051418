class Author

  @@post_count = 0
  attr_accessor :name
  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    post.author = self
    @@post_count +=1
  end

  def posts
    @posts
  end

  def add_post_by_title(title)
    new_post = Post.new(title)
    @posts << new_post
    new_post.author = self
    @@post_count +=1
  end

  def self.post_count
    @@post_count
  end

end
