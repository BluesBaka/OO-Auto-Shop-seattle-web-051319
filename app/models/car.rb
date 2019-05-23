class Car

  attr_reader :make, :model
  attr_accessor :classification, :mechanic, :owner

  @@all = []
  def initialize(make, model, classification, owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @mechanic = mechanic
    @owner = owner
    @@all << self
  end



  def self.experts(classification)
      Mechanic.all.select do |m|
      m.specialty == classification
    end
    # @@all.select do |c|
    # c.mechanic.specialty == classification
  # mechanics.collect do |mechanics|
  #     binding.pry
    #IF mechanic.specialty == classification
end

  def self.all
    @@all
  end

  def self.classy
    @@all.collect do |c|
      c.classification
    end
  end

end
