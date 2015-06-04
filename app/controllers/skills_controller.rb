class SkillsController < ApplicationController
	before_action :set_user
	before_action :set_skill, only:[:show, :edit, :update, :destroy, :upvote, :downvote]
	def index
		@skills = @user.skills
	end

	def new
		@user = User.find(params[:user_id])
		@skill = @user.skills.new
	end

	def create
		@user = User.find(params[:user_id])
		@skill = @user.skills.create(skill_params)
		if @skill.save
			redirect_to @user
		else
			render 'new'
		end
	end

	def update
		if @skill.update(skill_params)
			redirect_to root_path
		end
	end

	def show
	end
	
	def edit
	end

	def destroy
		@skill.destroy
		redirect_to 'index'
	end

	def upvote
		if current_user.free_votes > 0
			@skill.liked_by current_user
			current_user.decrement!(:free_votes)
			flash[:error] = current_user.free_votes
			redirect_to :back
		else
			flash[:error] = "No votes!"
			redirect_to :back
		end
	end

	def downvote
		@skill.downvoted_by current_user
		redirect_to :back
	end

private

	def set_user
		@user = User.find(params[:user_id])
	end

	def set_skill
		@skill = @user.skills.find(params[:id])
	end

	def skill_params
		params.require(:skill).permit(:name, :description, :image)
	end

end
