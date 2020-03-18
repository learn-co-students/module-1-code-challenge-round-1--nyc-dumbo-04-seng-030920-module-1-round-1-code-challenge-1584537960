class Review

    attr_accessor :viewer, :movie, :rating

    @@all = []

    def initialize(viewer, movie, rating)
        @viewer = viewer
        @movie = movie
        @rating = rating
        @@all<<self
    end

    def self.all
        @@all
    end

    def viewer
        self.all.select{|review|
        review.viewer == self}
    end

    def movie
        self.all.select{|review|
        review.movie == self}
    end
end
