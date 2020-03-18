# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

jupiter_ascending = Movie.new("Jupiter Ascending")
horse_girl = Movie.new("Horse Girl")
parasite = Movie.new("Parasite")
atonement = Movie.new("Atonement")

isabel = Viewer.new("Isabel")
bob = Viewer.new("Bob")

review1 = Review.new(isabel, jupiter_ascending, 3.5)
review2 = Review.new(isabel, horse_girl, 7)

isabel.reviews

horse_girl.reviews
jupiter_ascending.reviews

isabel.reviewed_movie?(horse_girl)
isabel.reviewed_movie?(jupiter_ascending)

isabel.rate_movie(parasite, 10)
isabel.rate_movie(atonement, 5)
bob.rate_movie(horse_girl, 10)
bob.rate_movie(parasite, 8)

horse_girl.average_rating
parasite.average_rating

Movie.highest_rated

# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
