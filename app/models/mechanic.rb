class Mechanic

  attr_reader :name, :specialty

  @@all = []
def initialize(name, specialty)
  @name = name
  @specialty = specialty
  @@all << self
end

def cars
  Car.all.select do |c|
    c.mechanic == self
  end
end

def owners
  cars.collect do |c|
    c.owner
  end
end

def owners_names
  cars.collect do |c|
    c.owner.name
  end
end

  def self.all
    @@all
  end


end
