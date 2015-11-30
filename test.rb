RSpec.configure do |rspec|
	rspec.color = true
end
# OPTION 1 FOR TEST
# describe Array do
#   it "#new should return a blank instance" do
#     expect(Array.new).to eq([])
#   end
#   it "should allow you to #count the items in it" do
#   	expect(Array.new.count).to eq(0)
#   end
# end

#OPTION 2 FOR TEST "DRYING IT UP"
# describe Array do
#   before(:all) do
#     @array = Array.new
#   end
#   it "#new should return a blank instance" do
#     expect(@array).to eq([])
# end
#   it "should allow you to #count the items in it" do
#     expect(@array.count).to eq(0)
# end
#   after do
#     puts "Test complete."
# end 

# end
#excercise  slide 19
describe Array do
	before (:all) do
		@array = ["hi","how","are","you?"]
		@array2 =[@array,"I'm","fine","thank","you"]
	end

	it "#drop" do
		expect(@array.drop(2)).to eq(["are","you?"])
	end
	it "#last" do
		expect(@array.last).to eq(4)
	end
	it "#first" do
		expect(@array.first).to eq("hi")
	end
	it "#flatten" do
		expect(@array2.flatten).to eq(["hi","how","are","you?","I'm","fine","thank","you"])
	end
end