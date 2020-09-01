class Customer

  attr_accessor :given_name, :family_name

  @@all = []

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all << self
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def self.all
    @@all
  end

  def restaurants
    all_restaurants = Review.all.select do
      |review| review.customer == self.full_name
    end
    
  end
  #restaurants is unfinished... how to make it unique is blowing my mind right now...
  def add_review(restaurant, rating)
    Review.new(self, restaurant.name, rating)
  end

  def num_reviews
    number_of_reviews = Review.all.select { |review| review.customer == self.full_name }
    number_of_reviews.length
  end

  def self.find_by_name(name)
    self.all.find { |customer| customer.full_name == name }
  end

  def self.find_all_by_given_name(name)
    self.all.select { |customer| customer.given_name == name }
  end

end
