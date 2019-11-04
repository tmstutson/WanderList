class TripsController < ApplicationController
	def index
		@trips = Trip.all
	end

	def new 
		@trips = Trips.new
	end

	def create
		Trip.create(trip_params)
		redirect_to root_path
	end
 
	private 

	def trip_params
		params.require(:trip).permit(:destination, :description, :eats)
	end

end