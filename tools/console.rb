# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

frozen = Movie.new("Frozen")
mulan = Movie.new("Mulan")
aladdin = Movie.new("Aladdin")
snowwhite = Movie.new("SnowWhite")
gary = Viewer.new("Gary")
ruby = Viewer.new("Ruby")
danny = Viewer.new("Danny")
bob = Viewer.new("Bob")
garyfrozen = Review.new(gary, frozen, 5)
garymulan = Review.new(gary, mulan, 7)
bobmulan = Review.new(bob, mulan, 3)
rubyaladdin = Review.new(ruby, aladdin, 8)
rubymulan = Review.new(ruby, mulan, 10)

# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
