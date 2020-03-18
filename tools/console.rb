# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

v1 = Viewer.new("siskel_is_lame")
v2 = Viewer.new("who_asked_ebert")
v3 = Viewer.new("pauline_k")
v4 = Viewer.new("a_o_s_reviews")

m1 = Movie.new("The Royal Tenenbaums")
m2 = Movie.new("Mrs. Doubtfire")
m3 = Movie.new("Children of Men")
m4 = Movie.new("Clueless")

r1 = Review.new(v1, m1, 9.0)
r2 = Review.new(v1, m2, 7.0)
r3 = Review.new(v1, m3, 7.5)
r4 = Review.new(v1, m4, 8.5)
r5 = Review.new(v2, m1, 7.5)
r6 = Review.new(v2, m2, 9.0)
r7 = Review.new(v3, m1, 9.5)
r8 = Review.new(v3, m3, 8.5)
r10 = Review.new(v3, m4, 8.5)
r11 = Review.new(v4, m1, 7.0)
r12 = Review.new(v4, m2, 5.0)
r13 = Review.new(v4, m4, 3.0)



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
