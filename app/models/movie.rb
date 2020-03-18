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
      review.movie  == self 
    end 
  end

  def reviewer 
      reviews.map {|review| review.viewer }
  end

  def average_rating
  length =  reviews.length
  rating = reviews.map { |movie| movie.rating }.sum
  average = rating/length
  
  average
  end 

  def self.highest_rated 
     highest_rated  = Review.all.map do |movie| 
           movie 
     end 
  highest_rated.max_by { |movie_ratings| movie_ratings.rating}
    
  end


end
