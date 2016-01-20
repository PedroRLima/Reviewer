class ProfessorsController < ApplicationController

	before_action :authenticate_user!

	def index
		@professors = Professor.all 
	end

	def show
		@professor = Professor.find(params[:id])
	end 
	
	def new
		@professor = Professor.new()
	end

	def create
		@professor = Professor.create(professor_params)
	end

	private
	def professor_params
		params.require(:professor).permit(:avatar, :name)
	end 
end
