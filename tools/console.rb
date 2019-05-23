require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

o1 = Owner.new("Bill")
o2 = Owner.new("Mark")
o3 = Owner.new("Sara")

m1 = Mechanic.new("Koe", "exotic")
m2 = Mechanic.new("Rompas", "antique")
m3 = Mechanic.new("Susan", "clunker")

c1 = Car.new("Kia", "Soul", "clunker", o2, m3)
c2 = Car.new("Ford", "T", "antique", o1, m1)
c3 = Car.new("Lotus", "345", "exotic", o2, m2)
c4 = Car.new("Corvette", "Cobra", "exotic", o3, m3)
c5 = Car.new("Alfa", "Quad", "exotic", o2, m1)


binding.pry
