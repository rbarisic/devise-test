class DevicesController < ApplicationController
  
  def index
    @devices = Device.all
  end

  def show
    @device = Device.find(params[:id])
  end

  def new
    @device = Device.new
  end

  def create
    @device = Device.new(device_params)
    
    if @device.save
      flash[:success] = "Device successfully created"
      redirect_to devices_path
    else
      render 'new'
    end
  end

  def edit
    @device = Device.find(params[:id])
  end

  def update
    @device = Device.find(params[:id])
    if @device.update_attributes(device_params)
      flash[:success] = "Device successfully updated."
      redirect_to @device
    else
      render 'edit'
    end
  end

  def destroy
    Device.find(params[:id]).destroy
    redirect_to devices_path
  end

private

    def device_params
      params.require(:device).permit(:name, :operating_system, :model_number, :screen_width, :screen_height, :picture_link)
    end

end