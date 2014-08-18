class PicturesController < ApplicationController
	def new
	end

	def create
		render :text => "Saving a picture. URL: #{params[:url]}, Title: #{params[:title]}, Artist: #{params[:artist]}"
	end

	def index
		@pictures = Picture.all
	end

	def show
		@picture = Picture.find(params[:id])
	end
end