require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###
a1 = Author.new("bob")
a2 = Author.new("tony")
a3 = Author.new("arie")
m1 = Magazine.new("pcgamer","gaming")
m2 = Magazine.new("shooting daily", "guns")
m3 = Magazine.new("road muscle", "cars")
art1 = Article.new(a3,m1,"tarkov game of the century???")
art2 = Article.new(a2,m2,"5.56 vs .223 whats the diffrence?")
art3 = Article.new(a1,m3,"is the dodge demon worth the hype")
### DO NOT REMOVE THIS
binding.pry

0
