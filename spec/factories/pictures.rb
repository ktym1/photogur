require 'faker'

FactoryGirl.define do

	factory :picture do
		artist { Faker::Name.name }
		title { Faker::Name.title}
		sequence(:user_id) {|n| "#{n}"}

		factory :invalid_picture do
			artist nil
		end
	end
end