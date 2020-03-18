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

  def reviews 
    Review.all.select do |review| 
      review.viewer == self  
    end 
  end
  def reviewer 
    reviews.map {|review| review.viewer}.uniq
  end

  def reviewed_movie?(movie)
    reviewed = reviews.map {|viewed| viewed.movie == movie }
     
    reviewed.map do |reviews| 
      if reviews 
        return true 
      else 
       return false 
      end 
    end
       
  end 
  # didnt finish
   def rate_movie(movie , rating)
      if self.reviewed_movie?(movie)
         


   end 
end
