class Magazine
  attr_accessor :name, :category
  @@all = []
  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end
  def name
    @name
  end
  def category
    @category
  end
  def self.all
    @@all
  end
  def contributors
    a = Article.all.select {|b|b.magazine == self}
    b = a.select {|b|b.author} 
  end
  def find_by_name(name)
    binding.pry
  end
  def article_titles
    binding.pry
  end
  def contributing_authors
    binding.pry
  end
end
