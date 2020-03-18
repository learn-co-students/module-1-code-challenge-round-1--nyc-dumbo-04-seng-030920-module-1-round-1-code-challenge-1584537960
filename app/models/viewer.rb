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

  def review
    Review.all.select {|review|} review.viewer == self}
  end

  def reviewed_movies
    total_movies = 0
    reviews.each {|review| total_review = total_review + review.rating}
    total_review
  end

end
