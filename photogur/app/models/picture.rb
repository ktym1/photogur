class Picture < ActiveRecord::Base
	has_many :comments, dependent: :destroy
	has_many :users, :through => :reviews
	
	validates :artist, presence: true
	validates :title, presence: true
	validates :url, presence: true

	mount_uploader :image, ImageUploader

end
