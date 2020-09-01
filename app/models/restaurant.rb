class Restaurant

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select { |review| review.restaurant == self.name }
  end

  def customers
    self.reviews.select { |review| review.customer == self }
  end
  #unfinished, once again figuring out how to make the customers unique is blowing my mind...

  def average_star_rating
    sum = 0
    star_ratings = self.reviews.collect { |review| review.rating }
    star_ratings.each { |number| sum += number }
    (sum.to_f / star_ratings.length).round(1)
  end

end
