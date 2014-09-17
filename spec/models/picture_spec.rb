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
		expect(Picture.new(artist: nil)).to have(1).errors_on(:artist)
	end

	it "is invalid without a title" do
		expect(Picture.new(title: nil)).to have(1).errors_on(:title)
	end
		
	# Test for valid_id Type to be an integer
		
	# it "is invalid without a user_id as an integer" do
	# 	expect(Picture.new(user_id: 1)).to be_kind_of(Numeric)
	# end

	

	# it "returns a picture score that is one upvote higher" do
	# 	picture = Picture.new(artist: "John",
	# 		title: "display pic",
	# 		user_id: 1)

	# 	picture.up_score
	# 	expect(Picture.up_score
	# end

	
end