class CommentsController < ApplicationController
	http_basic_authenticate_with name: "kerry", password: "mui", only: :destroy

	def show
		@comment = Comment.find(params[:id])
	end

	def create
		@picture = Picture.find(params[:picture_id])
		@comment = @picture.comments.create(comment_params)
		@comment.user = current_user

		if @comment.save
			redirect_to picture_path(@picture), notice: "Comment created successfully"
		else
			render "pictures/show"
		end	
	end

	def destroy
		@picture = Picture.find(params[:picture_id])
		@comment = @picture.comments.find(params[:id])
		@comment.destroy
		redirect_to picture_path(@picture)
	end
	

	private
		def comment_params
			params.require(:comment).permit(:commmenter, :body)
		end
end