class Review

    @@all = []

    attr_reader :viewer, :movie, :rating

    def initialize(viewer, movie, rating)
        @viewer = viewer
        @movie = movie
        @rating = rating
        @@all << self
    end

    def self.all
        @@all
    end

    def rating
        @@all.map do |review|
            review.rating
        end
    end

    def viewer
        @@all.map do |review|
            review.viewer
        end
    end
    
    def movie
        @@all.map do |review|
            review.movie
        end
    end

end
