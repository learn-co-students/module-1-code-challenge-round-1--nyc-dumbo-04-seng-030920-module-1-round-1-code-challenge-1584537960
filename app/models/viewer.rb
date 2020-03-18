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
    Review.all.select{|review| review.viewer == self}
  end

  def reviewed_movies
    reviews.map(&:movie)
  end

  def reviewed_movie?(movie)
    reviewed_movies.include?(movie)
  end

  def rate_movie(movie, rating_num)
    if reviewed_movie?(movie) 
      review_of_movie = reviews.select{|review| review.movie == movie}
      review_of_movie.first.rating = rating_num
      return review_of_movie.first
    else
      Review.new(self, movie, rating_num)
    end
  end

end