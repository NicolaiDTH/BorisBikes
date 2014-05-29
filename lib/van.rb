require_relative "bike_container"

class Van

	include BikeContainer

	alias :load :dock
	alias :drop_off :release

	def initialize(options = {})
		self.capacity = options.fetch(:capacity, capacity)
	end
end