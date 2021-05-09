class PropertiesController < ApplicationController
  def index
    @property = Property.all
  end

  def new
    @property = Property.new
  end

  def create
    Property.create(name: params[:property][:name], 
                    rent: params[:property][:rent],
                    address: params[:property][:address], 
                    age_building: params[:property][:age_building], 
                    remarks: params[:property][:remarksg])
    redirect_to new_property_path
  end

  def show
  end

  def edit
  end

  def confirm
  end
end
