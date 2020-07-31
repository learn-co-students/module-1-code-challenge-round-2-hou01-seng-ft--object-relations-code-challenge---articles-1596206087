require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

auth1 = Author.new("Angelo")
auth2 = Author.new("Shivang")
auth3 = Author.new("Ted")
auth4 = Author.new("Scott")
auth5 = Author.new("Wilmar")

mag1 = Magazine.new("Pumped","Gaming")
mag2 = Magazine.new("Noodz","Culinary")
mag3 = Magazine.new("Game Informer","Gaming")
mag4 = Magazine.new("People","Social")

art1 = Article.new(auth1,mag1,"Caring")
art2 = Article.new(auth2,mag4,"Helpful")
art3 = Article.new(auth1,mag3,"Dirty")
art4 = Article.new(auth4,mag2,"COVID Now")
art5 = Article.new(auth3,mag1,"Take Care")
art6 = Article.new(auth5,mag3,"COVID Now")







### DO NOT REMOVE THIS
binding.pry

0
