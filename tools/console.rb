# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

xavier = Viewer.new("xaviercarty")
donny = Viewer.new("donny")

movie1 = Movie.new("Honey i shrunk the kids")
movie2 = Movie.new("Above the rims")
movie3 = Movie.new("Juice")


review1 = Review.new(xavier , movie1 , 7)
review1 = Review.new(xavier , movie2 , 9)
review2 = Review.new(donny , movie1 , 10)
review3 = Review.new(donny , movie2 , 20)


# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
