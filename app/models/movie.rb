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
    Review.all.select do |review|
      review.movie == self
    end
  end

  def reviewers
    reviews.map do |review|
      review.viewer
    end
  end

  def rating 
    Review.all.map do |review|
      review.rating      
    end
  end

  def average_rating
    total_ratings = rating.sum.to_f
    total_number = Review.all.rating.length.to_f
    total_ratings / total_number
  end

  def self.highest_rated
    self.all.max_by do |movie|
      movie.rating
    end
  end

end