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
	it "is valid with a artist, title, and user_id" do
		picture = Picture.new(
			artist: "John",
			title: "display pic",
			user_id: 2)
		expect(picture).to be_valid
	end

	it "is invalid without an artist" do
		picture = FactoryGirl.build(:picture, artist: nil)
			expect(picture).to have(1).errors_on(:artist)
		end

	it "is invalid without a title" do
		picture = FactoryGirl.build(:picture, title: nil)
		expect(picture).to have(1).errors_on(:title)
	end
		
	# Test for valid_id Type to be an integer
		
	# it "is invalid if user_id is not an integer" do
	# 	picture = FactoryGirl.build(:picture, :artist, user_id: nil)
	# 		expect(picture).to have(1).errors_on(:user_id)
	# end

	

	# it "returns a picture score that is one upvote higher" do
	# 	picture = Picture.new(artist: "John",
	# 		title: "display pic",
	# 		user_id: 1)

	# 	picture.up_score
	# 	expect(Picture.up_score
	# end

	it "has a valid factory" do
		expect(build(:picture)).to be_valid
	end
end