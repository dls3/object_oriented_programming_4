# Our solar system has a lot of stuff in it. Let's write a program that can help us figure out how much
# stuff it has by keeping a list of all the celestial bodies in our system and adding up their total mass.

# First we'll need a class to represent the solar system. Let's call it System, and give it an attribute
# bodies. bodies will start as an empty array (ie. []).

class System

  @@bodies = []

  attr_reader :bodies

  def initialize

  end

  def add(new_body)
    @@bodies << new_body
  end

  def total_mass  ######CHECK ON THIS ######### :)
    mass_tot = 0

    @@bodies.each do |body|
      mass_tot += body.mass
    end
    mass_tot
  end
end

class Body

  attr_reader :name, :mass

  def initialize(name, mass)
    @name = name
    @mass = mass
  end

end

body1 = Body.new("Comet", 39932)
solar_system = System.new
solar_system.add(body1)



# Have a day, which is the number of hours it takes for the planet to rotate all the way around once.
# Have a year, which is the number of days it takes for the planet to orbit the sun once.
# Whether you want to express this in Earth days or the planet's days is up to you.
class Planet < Body

  attr_accessor :day_planet, :year_planet

  def initialize(name, mass, day_planet, year_planet)
    @day_planet = day_planet
    @year_planet = year_planet
    super(name, mass)
  end

  def day
    "There are #{day_planet} hours in a day on the planet #{name}"
  end

  def year
    "There are #{year_planet} days in a year on the planet #{name}"
  end

end

earth = Planet.new("Earth", 543534543, 24, 365)
puts earth.day


class Star < Body

  attr_accessor :type

  def initialize(name, mass, type)
    @type = type
    super(name, mass)
  end

  def print_type
    "#{name} is a #{type} star"
  end
end

sun = Star.new("Sun", 34634634, "g-star")
puts sun.print_type


class Moon < Body

  attr_accessor :month_moon, :planet

  def initialize(name, mass, month_moon, planet)
    @month_moon = month_moon
    @planet = planet
    super(name, mass)
  end

  def month
    "There are #{month_moon} days in a month on the moon #{name}"
  end

  def moon_output
    "#{name} is orbitting #{@planet.name}"
  end

end


jupiter = Planet.new("jupiter", 3443932, 10, 100)
europa = Moon.new('europa', 400, 1, jupiter)

puts europa.month
puts europa.moon_output
