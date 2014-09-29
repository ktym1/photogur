# require "rails_helper"

# RSpec.describe User, :type => :model do
#   it "orders by last name" do
#   lindeman = User.create!(first_name: "Andy", last_name: "Lindeman")
#   chelimsky = User.create!(first_name: "David", last_name: "Chelimsky")

#   expect(User.ordered_by_last_name).to eq([chelimsky, lindeman])
#   end
# end

require "spec_helper"

describe Picture do 
	let(:picture) { FactoryGirl.build(:picture) }

	it "has a valid factory" do
		expect(picture).to be_valid
	end

	it "is invalid without an artist" do
			picture.artist = nil
			expect(picture).to have(1).errors_on(:artist)
		end

	it "is invalid without a title" do
		picture.title = nil
		expect(picture).to have(1).errors_on(:title)
	end
	
	it "is invalid without a user_id" do
		picture.user_id = "abc"
		expect(picture).to have(1).errors_on(:user_id)
	end
	
	describe "#up_score" do	
		it "should increase upvote score" do
			picture.save
			expect(picture.up_score).to eq(0) 
			picture.up_score 
			expect(picture.up_score).to eq(1)
		end
	end

end