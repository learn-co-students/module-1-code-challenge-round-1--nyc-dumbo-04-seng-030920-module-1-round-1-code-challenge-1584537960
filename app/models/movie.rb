class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def reviews
    Review.all.select { |review|
      review.movie == self
    }
  end

  def viewers
    self.reviews.map { |review|
      review.viewer
    }
  end 

  def average_rating
    movie_ratings = self.reviews.map { |review|
      review.rating
    }

    movie_ratings.sum / movie_ratings.length
  end

  def self.highest_rated
    movie_averages = {}

    Movie.all.map { |movie|
      movie_averages[movie] = movie.average_rating
    }

    movie_averages.sort_by { |movie, rating| rating }.last

  end

  def self.all
    @@all
  end

end
