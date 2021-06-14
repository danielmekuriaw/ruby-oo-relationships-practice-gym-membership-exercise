class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    
    @name = name
    @lift_total = lift_total

    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select{
    |membership| membership.lifter == self
    }
  end

  def gyms
    self.memberships.map{
      |membership| membership.gym
    }
  end

  def self.average_lift_total
    sum = 0
    count = 0
    self.all.each{
      |lifter| sum += lifter.lift_total
      count += 1
    }
    return sum/count
  end

  def cost
    total = 0
    self.memberships.each{
      |membership| total += membership.cost
    }
    return total
  end

  def sign_up(gym, membership_cost)
    Membership.new(membership_cost, self, gym)
  end

end
