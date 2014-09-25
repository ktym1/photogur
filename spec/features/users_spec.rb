require 'spec_helper'

feature 'User management' do 
	scenario 'adds a new user' do

	visit root_path
	click_link 'Log in' 
	fill_in 'Email', with: :user
	fill_in 'Password', with: :user
	click_button 'Log in'

	end
end
