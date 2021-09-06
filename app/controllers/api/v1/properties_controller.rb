class Api::V1::PropertiesController < ApplicationController
  before_action :set_property, only: [:show, :update, :destroy]
  before_action :authenticate_user!, only: [:create, :update, :delete]
  before_action :is_creator, only: [ :update, :delete]

  # GET /properties
  def index
    @properties = Property.all

    render json: @properties
  end

  # GET /properties/1
  def show
    render json: @property
  end

  # POST /properties
  def create
    @property = Property.new(property_params)
    @property.user = current_user
    if @property.save
      render json: @property, status: :created
    else
      render json: @property.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /properties/1
  def update
    if @property.update(property_params)
      render json: @property
    else
      render json: @property.errors, status: :unprocessable_entity
    end
  end

  # DELETE /properties/1
  def destroy
    @property.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property
      @property = Property.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def property_params
      params.require(:property).permit(:title, :description, :price, :location_id, :category_id)
    end

    def is_creator
      if current_user != @property.user
        render json: {"errors":[{"message":"Access denied"}]}, status: 401
      end
    end
end
