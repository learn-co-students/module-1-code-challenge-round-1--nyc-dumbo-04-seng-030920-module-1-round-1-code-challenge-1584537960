class Movie

  attr_accessor :title
  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select{|review| review.movie == self}
  end

  def reviewers
    reviews.map(&:viewer)
  end

  def average_rating
    reviews.map(&:rating).sum / reviews.length
  end

  def self.highest_rated
    sorted = Review.all.sort_by{|review| review.rating}
    sorted.first.movie
  end

end
