class Picture < ActiveRecord::Base
	has_many :comments, dependent: :destroy
	has_many :commenting_users, :through => :comments, :source => :user
	belongs_to :user

	validates :artist, presence: true
	validates :title, presence: true
	# validates :url, presence: true if Proc.new {|picture| picture.image.blank? }
	validates :user_id, presence: true, numericality: {	only_integer: true}

	#validation to make sure it belongs to an actual user, not just any user_id?
	
	mount_uploader :image, ImageUploader
	acts_as_votable

	def up_score
		self.get_upvotes.size
	end

	def down_score
		self.get_downvotes.size
	end
end

