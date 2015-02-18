class MoviesController < ApplicationController

	def index
		@movies = Movie.where(user_id: session['user_id'])
	end

	def new
		@movie = Movie.new
	end

	def create
		@movie = Movie.create(params.require(:movie).permit(:title, :year, :director, :writer, :rotten_tomatoes, :format, :is_loaned, :user_id))
		if @movie.save
			redirect_to movies_path
		else
			render 'new'
		end
	end

	def edit
		@movie = Movie.find(params[:id])
	end

	def update
		@movie = Movie.find(params[:id])
		if @movie.update_attributes(params.require(:movie).permit(:title, :year, :director, :writer, :rotten_tomatoes, :format, :is_loaned, :user_id))
			redirect_to movies_path
		else
			render 'edit'
		end
	end

	def show
		@movie = Movie.find(params[:id])
	end

	def destroy
		@movie = Movie.find(params[:id])
		@movie.destroy
		redirect_to movies_path
	end

end
