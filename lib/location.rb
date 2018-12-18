
class Location
  attr_accessor :name, :restaurant_name, :address, :rent, :employees

  @@all = []

  def initialize(name, address, rent, employees)
    @name = name
    @restaurant_name = restaurant_name
    @address = address
    @rent = rent
    @@all << self
    @employees = employees
  end


  def self.all
    @@all
  end

  def self.all_addresses
    @@all.map do |location|
      location.address
    end
  end

  def hire_employee(name, pay)
    @employees << Employee.new(name, pay)
  end

end #end of Location class
