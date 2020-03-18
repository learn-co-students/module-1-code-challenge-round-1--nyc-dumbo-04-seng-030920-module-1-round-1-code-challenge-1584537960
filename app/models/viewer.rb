class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select do |review|
      review.viewer == self
    end
  end

  def reviewed_movies
  #take from reviews, filter out for movies
    reviews.map do |review|
      review.movie
  end

  def reviewed_movie?(movie)
    #if there is a review instance that has this viewer and the argument, return true
    #else return false
    if reviewed_movies.viewer == self && reviewed_movies.movie == movie
      return true
    else
      return false
    end
  end

  def rate_movie(movie, rating)
    # check if viewer instance and movie instance are associated, if not, create 
    #new review def initialize(viewer, movie, rating)
    #alternatively, reviewed_movies.include? (movie)
    if reviewed_movie?(movie) == true
      review.rating = rating
    else
      Review.new(self, movie, rating)
    end
  end


end
