class UserTripsController < ApplicationController
  before_action :set_usertrip, only: [:show, :edit, :update, :destroy]

  before_action :authenticate_user!
  
  def index
    @usertrips = UserTrip.all
  end

  def show
  end


  def new
    @usertrip = UserTrip.new
  end


  def edit
  end

  def create
    @usertrip = UserTrip.new(user_trip_params)

    respond_to do |format|
      if @usertrip.save
        format.html { redirect_to @usertrip, notice: 'User trip was successfully created.' }
        format.json { render :show, status: :created, location: @usertrip }
      else
        format.html { render :new }
        format.json { render json: @usertrip.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @usertrip.update(usertrip_params)
        format.html { redirect_to @usertrip, notice: 'User trip was successfully updated.' }
        format.json { render :show, status: :ok, location: @usertrip }
      else
        format.html { render :edit }
        format.json { render json: @usertrip.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @usertrip.destroy
    respond_to do |format|
      format.html { redirect_to usertrips_url, notice: 'User trip was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_usertrip
      @usertrip = UserTrip.find(params[:id])
    end

    def usertrip_params
      params.require(:usertrip).permit(:user_id, :trip_id)
    end
end
