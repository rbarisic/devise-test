class DevicesController < ApplicationController
  
  def index
    @devices = Device.all
  end

  def show
    @device = Device.find(params[:id])
  end

  def new

  end

  def create

  end

  def edit

  end

  def destroy
    Device.find(params[:id]).destroy
    redirect_to devices_path
  end

  def update

  end
end