require 'faker'

FactoryGirl.define do

	factory :picture do
		artist { Faker::Name.name }
		title { Faker::Name.title}
		# user_id { Faker::Number.user_id}
	end
end