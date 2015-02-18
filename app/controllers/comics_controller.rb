class ComicsController < ApplicationController

	def index
		@comics = Comic.where(user_id: session['user_id'])
	end

	def new
		@comic = Comic.new
	end

	def create
		@comic = Comic.create(params.require(:comic).permit(:title, :number, :publisher, :comic_box, :is_loaned, :user_id))
		if @comic.save
			redirect_to comics_path
		else
			render 'new'
		end
	end

	def edit
		@comic = Comic.find(params[:id])
	end

	def update
		@comic = Comic.find(params[:id])
		if @comic.update_attributes(params.require(:comic).permit(:title, :number, :publisher, :comic_box, :is_loaned, :user_id))
			redirect_to comics_path
		else
			render 'edit'
		end
	end

	def show
		@comic = Comic.find(params[:id])
	end

	def destroy
		@comic = Comic.find(params[:id])
		@comic.destroy
		redirect_to comics_path
	end

end
