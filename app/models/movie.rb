class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def title(name)
    @title
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select {|review| review.movie == self}
  end

  def self.highest_rated(movie)
    Rated.all.select {rating| rating.movie > movie}
end

end
