class PicturesController < ApplicationController

	def index
		@pictures = Picture.all
		@pictures = @pictures.page(params[:page]).order("created_at DESC")
	end

	def new
		@picture = Picture.new
	end

	def create
		@picture = Picture.new(picture_params)
		if @picture.save
			redirect_to pictures_url
		else
			render :new
		end
	end

	def edit
		@picture = Picture.find(params[:id])
	end

	def update
		@picture = Picture.find(params[:id])

		if @picture.update_attributes(picture_params)
			redirect_to '/pictures/#{@picture.id}'
		else
			render :edit
		end
	end
	
	def show
		@picture = Picture.find(params[:id])
	end

	def destroy
		@picture = Picture.find(params[:id])
		@picture.destroy
		redirect_to pictures_url
	end

	def upvote
		@picture = Picture.find(params[:id])
		@picture.liked_by current_user
		redirect_to @picture
	end

	def downvote
		@picture = Picture.find(params[:id])
		@picture.downvote_from current_user
		redirect_to @picture
	end

	private
	def picture_params
		params.require(:picture).permit(:artist, :title, :url, :image)
	end
end