# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

l1 = Lifter.new("Salem", 20)
l2 = Lifter.new("Hennon", 38)
l3 = Lifter.new("Michael", 56)
l4 = Lifter.new("Kutara", 112)
l5 = Lifter.new("Nefs Be Sintr", 22)

g1 = Gym.new("Eagan Planet Fitness")
g2 = Gym.new("Minneapolis Planet Fitness")
g3 = Gym.new("St. Paul Planet Fitness")
g4 = Gym.new("A random gym")
g5 = Gym.new("Another random gym")

m1 = Membership.new(20, l1, g2)
m2 = Membership.new(40, l3, g3)
m3 = Membership.new(40, l3, g2)
m4 = Membership.new(12, l4, g5)
m5 = Membership.new(1,l2, g4)
puts "Gains!"

binding .pry
