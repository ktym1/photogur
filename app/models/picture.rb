class Picture < ActiveRecord::Base
	has_many :comments, dependent: :destroy
	has_many :users, :through => :comments
	
	validates :artist, presence: true
	validates :title, presence: true
	# validates :url, presence: true if Proc.new {|picture| picture.image.blank? }
	# validates :user_id, presence: true
	
	mount_uploader :image, ImageUploader
	acts_as_votable

	def up_score
		self.get_upvotes.size
	end

	def down_score
		self.get_downvotes.size
	end
end

