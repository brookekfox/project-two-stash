class UsersController < ApplicationController
	def index
		@users = User.all
	end

	def new
		@user = User.new
		# @user = current_user
	end

	def create
		@user = User.create(params.require(:user).permit(:name, :email, :password, :password_confirmation, :avatar))
		if @user.save
			redirect_to new_sessions_path
			# redirect_to user_path(session['user_id'])
		else
			render 'new'
		end
	end

	def show
		@user = User.find(params[:id])
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		if @user.update_attributes(params.require(:user).permit(:name, :email, :password, :password_confirmation, :avatar))
			redirect_to user_path(session['user_id'])
		else
			render 'edit'
		end
	end

	def destroy
		@user = User.find(params[:id])
		@user.destroy
		redirect_to users_path
	end
end