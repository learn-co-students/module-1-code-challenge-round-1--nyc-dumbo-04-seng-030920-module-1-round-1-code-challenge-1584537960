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
    Review.all.select {|review| review.movie == self}
  end
  
  def reviewers
    reviews.map(&:viewer)
  end

  def ratings
    reviews.map(&:rating)
  end

  def average_rating
    (ratings.sum / ratings.count).round(2)
  end

  def self.highest_rated
    all.max_by {|movie| movie.average_rating}
  end
end
