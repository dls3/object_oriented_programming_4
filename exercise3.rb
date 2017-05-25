# Our solar system has a lot of stuff in it. Let's write a program that can help us figure out how much
# stuff it has by keeping a list of all the celestial bodies in our system and adding up their total mass.

# First we'll need a class to represent the solar system. Let's call it System, and give it an attribute
# bodies. bodies will start as an empty array (ie. []).

class System

  @@bodies = []

  attr_reader :bodies

  def initialize(name, mass)
    if body
      @name = name
      @mass = mass
    end
  end

  def add(body)
    @@bodies >> body
  end

  def total_mass
    total_mass = 0
    @@bodies.each do |body|
      total_mass += body
    total_mass
    end
  end

  def body(name, mass)


end



# We'll also need a class to represent the various celestial bodies. We'll call it Body. Each of them will
# need a name and a mass. Let's make these read-only; we'll assign them when we create the body.
#
# There are several types of bodies we're concerned about in our solar system: planets, stars
# (like our sun), and moons. We'll ignore asteroids and smaller planetoids (sorry Pluto).
#
# Each of our body types needs a class: Planet, Star, and Moon. All of these bodies have some similarities:
# they all have a name and a mass. So, let's also make them inherit from Body. They do have some unique qualities though.
