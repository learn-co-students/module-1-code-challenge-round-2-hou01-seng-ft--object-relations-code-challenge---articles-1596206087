# Please copy/paste all three classes into this file to submit your solution!

class Article
    attr_reader :author, :magazine, :title

    @@all = []

    def initialize(author,magazine,title)
        @author = author
        @magazine = magazine
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end



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

      




class Magazine
  attr_accessor :name, :category

  @@all = []

  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end

  def contributors
    Article.all.select {|art| art.magazine == self}.map {|art| art.author}
  end

  def self.find_by_name(name)
    Article.all.find {|art| art.magazine.name == name}
  end

  def article_titles
    Article.all.select {|art| art.magazine == self}.map {|art| art.title}
  end

  # def contributing_authors
  #   self.contributors 
  # end

  ## For the last method, I know I wanted to use the #contributors to help me in this method.
  ## The problem I came into was that #contributors gives me back an array of authors who have
  ## written for this magazine instance. I tried to .size and oppend with > 2 but realized that
  ## gave true or false answers. What we want is an array of the Author instances that meets that
  ## condition. I ran out of time on this method and felt I could have narrowed it down. I understand
  ## a helper method is helpful in this case.


  def self.all
    @@all
  end

end
