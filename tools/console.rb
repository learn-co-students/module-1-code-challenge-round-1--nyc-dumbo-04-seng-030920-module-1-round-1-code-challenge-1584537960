# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

saw = Movie.new("Saw 3")
parasite = Movie.new("Parasite")
frozen = Movie.new("Frozen")

jack = Viewer.new("Jack Jones")
sophia = Viewer.new("Sophia Stephens")
ray = Viewer.new("Ray Rosen")

Review.new(jack, saw, 7)
Review.new(jack, parasite, 8)
Review.new(sophia, frozen, 2)
Review.new(ray, saw, 5)

saw.reviews
saw.reviewers
saw.average_rating
Movie.highest_rated

jack.reviews
jack.reviewed_movies
jack.reviewed_movie?(saw)
sophia.rate_movie(frozen, 10)
sophia.rate_movie(saw, 4)

# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0