class TvSeasonsController < ApplicationController

	def index
		@tv_seasons = TvSeason.where(user_id: session['user_id'])
	end

	def new
		@tv_season = TvSeason.new
	end

	def create
		@tv_season = TvSeason.create(params.require(:tv_season).permit(:title, :season, :year, :show_runner, :network, :format, :is_loaned, :user_id))
		if @tv_season.save
			redirect_to tv_seasons_path
		else
			render 'new'
		end
	end

	def edit
		@tv_season = TvSeason.find(params[:id])
	end

	def update
		@tv_season = TvSeason.find(params[:id])
		if @tv_season.update_attributes(params.require(:tv_season).permit(:title, :season, :year, :show_runner, :network, :format, :is_loaned, :user_id))
			redirect_to tv_seasons_path
		else
			render 'edit'
		end
	end

	def show
		@tv_season = TvSeason.find(params[:id])
	end

	def destroy
		# @tv_season = TvSeason.find(params[:id])
		@tv_season.destroy
		redirect_to tv_seasons_path
	end

end
