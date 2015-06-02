class SkillsController < ApplicationController
	before_action :set_skill, only:[:show, :edit, :update, :destroy, :upvote, :downvote]

	def index
		@skills = Skill.all
	end

	def new
		@skill = Skill.new
	end

	def create
		@skill = Skill.new(skill_params)
		if @skill.save
			redirect_to @skill
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

	def set_skill
		@skill = Skill.find(params[:id])
	end

	def skill_params
		params.require(:skill).permit(:name,:description, :image)
	end

end
