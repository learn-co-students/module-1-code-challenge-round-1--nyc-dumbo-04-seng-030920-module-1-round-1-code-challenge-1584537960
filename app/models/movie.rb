class Movie
  attr_accessor :title, :viewer

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select{|movie|
      movie.review == self 
    }
  end 

  def reviewers
    Viewer.all.select{|movie|
      movie.viewer == self 
    }
  end 

  def average_rating
    Review.all.rating.reduce{|review|
      average_rating += movie.reviews/Review.all.count
      }
  end 

  def self.highest_rated
    
  end 


end
