class CommentsController < ApplicationController

	def create
		@professor = Professor.find(params[:professor_id])
		@comment = @professor.comments.create(comments_params)
		redirect_to "/"
	end 

	private
	def comments_params
		params.require(:comment).permit(:text)
	end
end
