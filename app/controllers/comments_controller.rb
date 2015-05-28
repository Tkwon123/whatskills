class CommentsController < ApplicationController
#before_action :set_comment, only: [:create]

	def create
		@skill = Skill.find(params[:skill_id])
		@comment = @skill.comments.new(comment_params)
		@comment.user = current_user
		@comment.save
		redirect_to :back
	end

private

	def set_comment
		@comment = Comment.find(params[:id])
	end

	def comment_params
		params.require(:comment).permit(:skill_id, :body, :user_id)
	end

end
