class Viewer
  attr_accessor :username, :review

  @@all = []

  def initialize(username)
    @username = username
    # self.class.all << self
    @@all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select{|review|
    review.viewer == self}
  end

  def reviewed_movies
    reviews.map{|reviewed|
    reviewed.movie}
  end

  def reviewed_movie?(movie)
    if reviewed_movies.each{|eachmovie| eachmovie == movie}
      true
    else
      false
    end
  end

  def rate_movie(movie, rating)
    if reviewed_movie?(movie)
      reviews.map{|reviewed| reviewed.rating = rating}
    else
      Review.new(self, movie, rating)
    end
  end

end
