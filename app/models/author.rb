class Author
  attr_reader :name
  def initialize(name)
    @name = name
  end
  def name
    @name
  end
  def articles
    a = Article.all.select {|b|b.author == self}
    binding.pry
  end
  def magazines
    a = Article.all.select {|b|b.author == self}
    b = a.select {|b| b.magazine}
    c = b.uniq
    binding.pry
  end
  def add_article(magazine, title)
    Article.new(self, magazine,title)
  end
  def topic_areas
    binding.pry
  end
end
