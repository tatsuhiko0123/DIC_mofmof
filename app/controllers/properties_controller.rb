class PropertiesController < ApplicationController
  before_action :set_property, only: [:show, :edit, :update, :destroy]
  def index
    @properties = Property.all
  end

  def new
    @property = Property.new
    2.times { @property.stations.build}
  end

  def create
    @property = Property.create(property_params)
    if @property.save
      redirect_to properties_path, notice: "物件を登録しました"
    else
      render :new
    end
  end  

  def show
    @stations = @property.stations
  end

  def edit
    @property.stations.build
  end

  def update
    if @property.update(property_params)
      redirect_to properties_path, notice: "物件を編集しました！"
    else
      render :edit
    end
  end

  def destroy
    @property.destroy
    redirect_to properties_path, notice: "物件を削除しました"
  end

  private
  def property_params
    params.require(:property).permit(:name, :rent, :address, :age_building, :remarks, stations_attributes: [:id, :route_name, :station_name, :walking_time])
  end

  def set_property
    @property = Property.find(params[:id])
  end
end
