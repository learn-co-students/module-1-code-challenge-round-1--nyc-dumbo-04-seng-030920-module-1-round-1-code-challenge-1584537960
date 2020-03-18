class Movie
  attr_accessor :title, :review

  @@all = []

  def initialize(title)
    @title = title
    # self.class.all << self
    @@all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select{|review|
    review.movie == self}
  end

  def reviewers
    reviews.map{|moviereview|
    moviereview.viewer}
  end

  def average_rating
    sumratings = reviews.sum{|reviews|reviews.rating}
    totalratings = Review.all.map{|reviews|reviews.rating}.count
    average = sumratings / totalratings
    average
  end

  def self.highest_rated
    self.all.average_rating.max_by{|x|x}
  end
end
