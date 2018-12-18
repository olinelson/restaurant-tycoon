
class Restaurant
  attr_accessor :name, :location

  @@all = []

  def initialize(name, location)
    @name = name
    @location = location
    @@all << self
  end

  def self.all
    @@all
  end

  def locations
    @@all.select do |restaurant|
      restaurant.name == self.name
    end
  end

  def array_of_rents
    locations.map do |restaurant|
      restaurant.location.rent
    end
  end

  def total_rent
    array_of_rents.inject(0){|sum,x| sum + x }
  end

  def create_location(new_location)
    Restaurant.new(self.name, new_location)
  end

  def employees
    locations.map do |restaurant|
      restaurant.location.employees
    end
  end

  def array_of_pay
    employees.flatten.map do |employee|
      employee.pay
    end
  end

  def total_pay
    array_of_pay.inject(0){|sum, x| sum + x}
  end

  def total_expenses
    total_pay + total_rent
  end


end #end of restaurant class
