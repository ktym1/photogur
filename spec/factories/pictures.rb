FactoryGirl.define do

	factory :picture do
		artist "John"
		title "display pic"
		sequence(:user_id) {|n| "#{n}"}
	end
end