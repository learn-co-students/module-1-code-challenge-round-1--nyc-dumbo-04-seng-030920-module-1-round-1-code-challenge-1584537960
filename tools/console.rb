# require and load the environment file
require_relative '../config/environment.rb'
# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
mv1 = Movie.new("2 Fast 2 Furious")
mv2 = Movie.new("The Dark Knight")

viewer1 = Viewer.new("Asad")
viewer2 = Viewer.new("Vin Diesel")

rv1 = Review.new(viewer1, mv1, 8)
rv2 = Review.new(viewer2, mv2, 10)



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
