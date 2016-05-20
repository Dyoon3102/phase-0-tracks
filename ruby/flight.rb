module Flight
	def take_off(altitude)
		puts "Taking off and ascending until reaching #{altitude} ..."
	end
end

class Bird
	# Include the Flight module
	include Flight
end

class Plane
	include Flight
end

# Create new instance for Bird class
bird = Bird.new
# some_module.method(param)
bird.take_off(800)

# Create new instance for Plane class
plane = Plane.new
# some_module.same_method_as_above(param)
plane.take_off(30000)