class WritingsController < ApplicationController
	def index
		@writings = Writing.all
	end

	def new
		@writing = Writing.new
	end

	def create
		@writing = Writing.new(article_params)
		if @writing.update_attributes(article_params)
			redirect_to @writing
		else 
			render 'new'
		end
	end

	def edit
		@writing = Writing.friendly.find(params[:id])
	end

	def update
		@writing = Writing.friendly.find(params[:id])
		if @writing.update_attributes(article_params)
			redirect_to @writing
		else
			render 'edit'
		end
	end

	def show	
		@writing = Writing.friendly.find(params[:id])
	end

	def destroy
	end

	private 

	def article_params
		params.require(:writing).permit(:title, :publication, :publication_link, :date, :body)
	end

end
