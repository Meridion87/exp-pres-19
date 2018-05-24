class Vehicle
  #attr_accessor :start
  def initialize(model, year)
    @model = model
    @year = year
    @start = false
  end
  def engine_start
    @start = true
  end
end

class Car < Vehicle
  #attr_accessor :model, :year
  @@cant_car = 0
  def initialize (model, year)
    super
    @@cant_car += 1
  end

  def self.cant_cars
    return @@cant_car
  end

  def engine_start
    super
    puts "El motor se ha encendido"
  end


end

a = Car.new("auto1", 1995)
b = Car.new("auto2", 1996)
c = Car.new("auto3", 1997)
d = Car.new("auto4", 1998)
e = Car.new("auto5", 1999)
f = Car.new("auto6", 2000)
g = Car.new("auto7", 2001)
h = Car.new("auto8", 2002)
i = Car.new("auto9", 2003)
j = Car.new("auto10", 2004)

puts Car.cant_cars
