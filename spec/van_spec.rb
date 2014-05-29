require "./lib/van"

class Van; include BikeContainer; end

	describe Van do
		let(:van) {Van.new}
		let(:bike) {Bike.new}

		it "should contain the default capacity" do
			expect(van.capacity).to eq 10
		end

		it "should check if it has broken bikes" do
			expect()
		end
	end