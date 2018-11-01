class ProjectsController < ApplicationController
	def index
		@projects = Project.all.order("updated_at DESC")
	end

	def new
		@project = Project.new
	end

	def create
		@project = Project.new(article_params)
		if @project.update_attributes(project_params)
			redirect_to @project
		else 
			render 'new'
		end
	end

	def edit
		@project = Project.find(params[:id])
	end

	def update
		@project = Project.find(params[:id])
		if @project.update_attributes(project_params)
			redirect_to @project
		else
			render 'edit'
		end
	end

	def show	
		@project = Project.find(params[:id])
	end

	def destroy
	end

	private 

	def article_params
		params.require(:project).permit(:title, :body, :date, :link)
	end
end
