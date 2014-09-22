class PicturesController < ApplicationController
	before_action :get_picture, :only => [:edit, :update, :show, :destroy, :upvote, :downvote]

	def get_picture
	@picture = Picture.find(params[:id])
		# if @picture.exists?				
			# redirect_to pictures_path
		# else 
		# 	@picture
		# end
	end

	def index
		@pictures = Picture.all
	end

	def new
		@picture = Picture.new
	end

	def create
		@picture = Picture.new(picture_params)
		@picture.user = current_user
		if @picture.save
			redirect_to pictures_url
		else
			render :new
		end
	end

	def update
		if @picture.update_attributes(picture_params)
			redirect_to @picture
		else
			render :edit
		end
	end
	
	def destroy
		@picture.destroy
		redirect_to pictures_url
	end

	def upvote
		@picture.liked_by current_user
		redirect_to @picture
	end

	def downvote
		@picture.downvote_from current_user
		redirect_to @picture
	end

	def edit
		
	end

	def show
			
	end

	private
	def picture_params
		params.require(:picture).permit(:artist, :title, :image)
	end
end