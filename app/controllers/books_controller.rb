class BooksController < ApplicationController

	def index
		# @books = Book.all
		@books = Book.where(user_id: session['user_id'])
	end

	def new
		@book = Book.new
	end

	def create
		@book = Book.create(params.require(:book).permit(:title, :author_first, :author_last, :year, :genre, :is_loaned,
																										 :user_id))
		if @book.save
			redirect_to books_path
		else
			render 'new'
		end
	end

	def edit
		@book = Book.find(params[:id])
	end

	def update
		@book = Book.find(params[:id])
		if @book.update_attributes(params.require(:book).permit(:title, :author_first, :author_last, :year, :genre, :is_loaned, :user_id))
			redirect_to books_path
		else
			render 'edit'
		end
	end

	def show
		@book = Book.find(params[:id])
	end

	def destroy
		@book = Book.find(params[:id])
		@book.destroy
		redirect_to books_path
	end

end
