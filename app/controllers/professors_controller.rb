class ProfessorsController < ApplicationController

	before_action :authenticate_user!

	def index
		@professors = Professor.all 
	end

	def show
		@professor = Professor.find(params[:id])
	end 
	
	def new
		@professor = Professor.new(:name => 'professor')
		@professor.save
	end

	def create
		@professor = Professor.create(professor_params)
	end

	def vote
		@professor = Professor.find(params[:id])
		@professor.upvote_by current_user
		flash[:message] = "Obrigado por votar"
		redirect_to :back
	end

	def unvote 
		@professor = Professor.find(params[:id])
		@professor.downvote_by current_user
		flash[:message] = "Obrigado por votar"
		redirect_to :back
	end

	private
	def professor_params
		params.require(:professor).permit(:avatar, :name)
	end 
end
