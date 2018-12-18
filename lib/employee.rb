class Employee
  attr_accessor :name, :pay

  @@all = []

  def initialize(name, pay)
    @name = name
    @pay = pay
    @@all << self
  end

  def self.all
    @@all
  end

  def self.wages
    @@all.map do |employee|
      employee.pay
    end
  end

  def self.average_pay
    total_wages = wages.inject(0){|sum,x| sum + x }
    result = total_wages / wages.length
  end

end #end of Employee class
