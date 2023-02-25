class Restaurant
  # TODO: add relevant accessors if necessary
  attr_reader :city, :name, :restaurants
  attr_accessor :average_rating

  def initialize(city, name)
    # TODO: implement constructor with relevant instance variables
    @city = city
    @name = name
    @ratings = []
  end
  # TODO: implement .filter_by_city and #rate methods

  def rate(new_rate)
    @ratings << new_rate
    @average_rating = @ratings.sum.fdiv(@ratings.length)
  end

  def self.filter_by_city(restaurants, town)
    restaurants.select { |restaurant| restaurant.city == town }
  end
end
