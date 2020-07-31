class Author
  attr_reader :name


  def initialize(name)
    @name = name
  end

  def articles
    Article.all.select {|art| art.author == self}
  end

  def magazines
    Article.all.select {|art| art.author == self}.map {|art| art.magazine}.uniq
  end

  def add_article(magazine,title)
    Article.new(self,magazine,title)
  end

  def topic_areas
    Article.all.select {|art| art.author == self}.map {|art| art.magazine.category}.uniq
  end


end
