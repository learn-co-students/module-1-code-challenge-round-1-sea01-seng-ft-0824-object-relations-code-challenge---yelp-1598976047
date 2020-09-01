require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


review1 = Review.new("Davis Brown", "Pagliacci", 5)
review2 = Review.new("Adam Anonmyr", "Dicks", 4)
review3 = Review.new("Ix Anonymous", "Tacos Guaymas", 4)
review4 = Review.new("Ryan Derheimer", "Pagliacci", 4)
review5 = Review.new("Cervo Breaker", "Catfish Corner", 5)
review6 = Review.new("Davis Brown", "Pagliacci", 5)

restaurant1 = Restaurant.new("Dukes")
restaurant2 = Restaurant.new("Pagliacci")
restaurant3 = Restaurant.new("Dicks")
restaurant4 = Restaurant.new("Tacos Guaymas")
restaurant5 = Restaurant.new("Catfish Corner")
restaurant6 = Restaurant.new("Franz")
restaurant7 = Restaurant.new("Twilight Exit")

customer1 = Customer.new("Davis", "Brown")
customer2 = Customer.new("Adam", "Anonymr")
customer3 = Customer.new("Ix", "Anonymous")
customer4 = Customer.new("Ryan", "Derheimer")
customer5 = Customer.new("Cervo", "Breaker")
customer6 = Customer.new("Davis", "Black")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line