module BikeContainer
	DEFAULT_CAPACITY = 10
	
	def bikes
		@bikes ||= []
	end

	def bike_count
		bikes.count
	end

	def capacity
		@capacity ||= DEFAULT_CAPACITY
	end

	def capacity=(value)
		@capacity = value
	end

	def dock(bike=nil?)
		raise "The station is full." if full?
		bikes << bike
	end

	def release(bike=nil?)
		raise "The station is empty." if empty?
		bikes.delete(bike)
	end

	def full?
		bike_count == capacity
	end

	def empty?
		bike_count == 0
	end

	# def fill_station(station)
	# 	20.times {station.dock(Bike.new)}
	# end

	def available_bikes
		bikes.reject {|bike| bike.broken?}
	end

	def broken_bikes
		bikes.select {|bike| bike.broken?}
	end
end