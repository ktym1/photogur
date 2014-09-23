require 'faker'

FactoryGirl.define do

	factory :comment do
		body {Faker::Lorem.sentence}
		sequence(:picture_id) {|n| "#{n}"}
		sequence(:user_id) {|n| "#{n}"}
	end
end