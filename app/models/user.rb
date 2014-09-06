class User < ActiveRecord::Base
	has_secure_password
	has_many :comments
	has_many :pictures
	has_many :commented_pictures, :through => :comments, :source => :picture
end
