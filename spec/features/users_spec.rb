require 'spec_helper'

feature 'User management' do 
	scenario 'Logging in' do

	visit root_path
		click_link 'Log in' 
		fill_in 'Email', with: :user
		fill_in 'Password', with: :user
		click_button 'Log in'
	end

	scenario 'Signing up' do

	visit root_path
			click_link 'Sign up'
			find('.email').fill_in 'Email', with: 'newuser@example.com'
			find('.password').fill_in 'Password', with: 'secret123'
			find('.password_confirmation').fill_in 'Password confirmation', with: 'secret123'
			click_button 'Create User'
	end
end

# Logging out

# Add new picture
# Edit / Delete picture

# Add new comment
# Edit / Delete comment