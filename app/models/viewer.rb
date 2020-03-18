class Viewer
  attr_accessor :username, :review, :rating

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select{|viewer|
      viewer.review == self 
      }
  end

  def reviewed_movies
      Movie.all.select{|viewer|
        viewer.movie == self
      }
    end
    
    def reviewed_movie?(movie)
      Movie.viewer == self
    end


    def rate_movie(movie, rating)
        self.reviewed_movie?(movie) ? Review.rating = rating : Review.new(self, movie, rating)
      end 

  end 
