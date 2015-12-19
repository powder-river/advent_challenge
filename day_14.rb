class Reindeer
  attr_reader :name,:speed, :duration, :rest
  def initialize(name:, speed:, duration:, rest:)
    @name = name
    @speed = speed
    @duration = duration
    @rest = rest
  end

  def deer_rest

  end

  def fly(flight_time)
    flight_time = flight_time
    deer_duration = self.duration
    traveled = 0

    while flight_time > 0
      while deer_duration > 0
        traveled += self.speed
        deer_duration -= 1
        flight_time -= 1
      end
      #subtracts rest time from flight time
      flight_time -= self.rest
      #checks flight time and makes sure there is more flight time than time
      #deer can fly, else the deer_duration is adjusted to how much time is left
      if flight_time > self.duration
        deer_duration = self.duration
      else
        deer_duration = flight_time
      end
    end
    puts "Flight Time: #{}, Deer Time: #{deer_duration}"
    return traveled

  end

end

vixen = Reindeer.new(name: "vixen",speed: 8,duration: 8, rest: 53)
blitzen = Reindeer.new(name: "blitzen",speed: 13,duration: 4, rest: 49)
rudolph = Reindeer.new(name: "rudolph",speed: 20,duration: 7, rest: 132)
cupid = Reindeer.new(name: "cupid",speed: 12,duration: 4, rest: 43)
donner = Reindeer.new(name: "donner",speed: 9,duration: 5, rest: 38)
dasher = Reindeer.new(name: "dasher",speed: 10,duration: 4, rest: 37)
prancer = Reindeer.new(name: "prancer",speed: 9,duration: 12, rest: 97)
comet = Reindeer.new(name: "comet",speed: 3,duration: 37, rest: 76)
dancer = Reindeer.new(name: "dancer",speed: 37,duration: 1, rest: 36)




# Vixen can fly 8 km/s for 8 seconds, but then must rest for 53 seconds.
# Blitzen can fly 13 km/s for 4 seconds, but then must rest for 49 seconds.
# Rudolph can fly 20 km/s for 7 seconds, but then must rest for 132 seconds.
# Cupid can fly 12 km/s for 4 seconds, but then must rest for 43 seconds.
# Donner can fly 9 km/s for 5 seconds, but then must rest for 38 seconds.
# Dasher can fly 10 km/s for 4 seconds, but then must rest for 37 seconds.
# Comet can fly 3 km/s for 37 seconds, but then must rest for 76 seconds.
# Prancer can fly 9 km/s for 12 seconds, but then must rest for 97 seconds.
# Dancer can fly 37 km/s for 1 seconds, but then must rest for 36 seconds.

b = []

comet = comet.fly(2503)
b << comet

dancer = dancer.fly(2503)
b << dancer

vixen = vixen.fly(2503)
b << vixen

blitzen = blitzen.fly(2503)
b << blitzen

rudolph = rudolph.fly(2503)
b << rudolph

cupid = cupid.fly(2503)
b << cupid

donner = donner.fly(2503)
b << donner

dasher = dasher.fly(2503)
b << dasher

prancer = prancer.fly(2503)
b << prancer

puts "#{b.sort}"
