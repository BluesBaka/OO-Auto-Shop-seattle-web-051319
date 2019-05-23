class Owner

  attr_reader :name

    @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def cars
    Car.all.select do |c|
      c.owner == self
    end
  end

  def mechanics
    cars.collect do |c|
      c.mechanic
    end
  end

  def self.car_count
     car_count = Car.all.count
     owners_count = @@all.count
     average = car_count/owners_count
     binding.pry
     average
  end

  def self.all
    @@all
  end
end
