require "faker"

FactoryGirl.define do

	factory :picture do
		artist { Faker::Name.artist }
		title { Faker::Title.title }
		user_id { Faker::Number.user_id}
	end
end