# require the Bundler module
require 'bundler/setup'

# require all gems defined in the Gemfile
Bundler.require

# require all files in the top-level app directory
require_rel '../app'


P1 = movie.new("Moth")
P2 = movie.new("Xmas Bell")
R1 = viewer.new("Kris")
R2 = viewer.new("John")
R1 = review.new(Kris, Moth, 5.0)
R2 = review.new(John, Xmas Bell, 7.0)
