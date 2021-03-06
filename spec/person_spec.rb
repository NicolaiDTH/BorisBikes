require "person"

describe Person do
	person = Person.new
	it "has no bike" do
		expect(person).not_to have_bike
	end

	it "can have a bike" do
		person = Person.new(:bike)
		expect(person).to have_bike
	end

	it "can fall down" do
		bike = double :bike

		expect(bike).to receive(:break!)
		person = Person.new(bike)
		person.fall_down
	end

	it "can rent a bike from a station" do
		station = double :station
		expect(station).to receive(:release_bike)
	
		person.rent_bike_from station
	end

	it "has a bike after renting one from a station" do
		station = double :station, release_bike: :bike
		# expect(station).to receive(:release_bike).and_return(:bike)

		person.rent_bike_from(station)

		expect(person).to have_bike
	end
end