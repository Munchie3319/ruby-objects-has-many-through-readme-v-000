class Customer
  attr_accessor :name, :age

  @@all = [ ]

  def initialize(name, age)
    @name = name
    @age = age
    @@all << self
  end

  def self.all
    @@all
  end

  def new_meal(waiter, total, tip=0)
    Meal.new(waiter, self, total, tip)
  end

  terrance = Customer.new("Terrance", 27)
  jason = Waiter.new("Jason", 4)
  andrew = Waiter.new("Andrew", 7)
  yomi = Waiter.new("Yomi", 10)

  terrance.new_meal(jason, 50, 6)
  terrance.new_meal(andrew, 60, 8)
  terrance.new_meal(yomi, 30, 4)

  terrance.waiters
  terrance.waiters.length
end
