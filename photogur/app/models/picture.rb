class Picture < ActiveRecord::Base
	has_many :comments
	
	validates :artist, presence: true
	validates :title, presence: true
	validates :url, presence: true
end
