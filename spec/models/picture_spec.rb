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
	it "is valid with a artist, title, and user_id"
	it "is invalid without an artist"
	it "is invalid without a title"
	it "is invalid without a user_id"
	# it "returns an upvote/downvote? count...?"
end