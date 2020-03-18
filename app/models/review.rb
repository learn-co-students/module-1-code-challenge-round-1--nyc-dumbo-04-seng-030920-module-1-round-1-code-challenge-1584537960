class Review

attr_accessor :Viewer, :movie, :rating
@@all =[]

    def initialize
        @viewer = Viewer
        @movie = Movie
        @rating = rating
        @@all << self

    def self.all
        @@all
    end

    
end
