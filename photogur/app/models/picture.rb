class Picture < ActiveRecord::Base
	has_many :comments, dependent: :destroy
	
	validates :artist, presence: true
	validates :title, presence: true
	validates :url, presence: true
end
