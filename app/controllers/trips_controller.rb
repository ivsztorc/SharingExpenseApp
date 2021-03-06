class TripsController < ApplicationController
  before_action :set_trip, only: [:show, :edit, :update, :destroy]
  def index
    @trips = Trip.all
  end

 
  def show
    @trip = Trip.find(params[:id])
    @total = @trip.total
  end


  def new
    @trip = Trip.new
  end


  def edit
  @trip = Trip.find(params[:id])
  end

  def create
    @trip = Trip.new(trip_params) 
    @trip.users<<current_user
    respond_to do |format|
      if @trip.save
        format.html { redirect_to @trip, notice: 'New trip created.' }
        format.json { render :show, status: :created, location: @trip }
      else
        format.html { render :new }
        format.json { render json: @trip.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @trip = Trip.find(params[:id])
    respond_to do |format|
      if @trip.update(trip_params)
        format.html { redirect_to @trip, notice: 'Your trip has been updated.' }
        format.json { render :show, status: :ok, location: @trip }
      else
        format.html { render :edit }
        format.json { render json: @trip.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @trip.destroy
    respond_to do |format|
      format.html { redirect_to trips_url, notice: 'Your trip has been deleted.' }
      format.json { head :no_content }
    end
  end

    

    private
      def set_trip
        @trip = Trip.find(params[:id])
      end
      
      def trip_params
        params.require(:trip).permit(:tripname, :country_id, :currency_id, :participant_id, :expense_id)
      end
end
