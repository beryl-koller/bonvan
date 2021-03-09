class VansController < ApplicationController
    def index
      @vans = Van.all
    end

    def show
      @van = Van.find(params[:id])
    end
    
    def new
      @van = Van.new
    end

    def create
      @van = Van.new(van_params)
      @van.save
      redirect_to van_path(@van)
    end

    private

  def van_params
    params.require(:van).permit(:brand, :model, :passengers, :location, :description, :price_per_night)
  end
end