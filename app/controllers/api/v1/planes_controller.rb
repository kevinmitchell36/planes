class Api::V1::PlanesController < ApplicationController
  def index
    @planes = Plane.all
    render "index.json.jbuilder"
  end

  def show
    @plane = Plane.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def create
    @plane = Plane.create(
      model: params[:model],
      capacity: params[:capacity],
      engines: params[:engines],
      size: params[:size]
      )
    render 'show.json.jbuilder'
  end

  def update
    @plane = Plane.find_by(id: params[:id])
    @plane.model = params[:model] || @plane.model
    @plane.capacity = params[:capacity] || @plane.capacity
    @plane.engines = params[:engines] || @plane.engines
    @plane.size = params[:size] || @plane.size
    @plane.save
    render 'show.json.jbuilder'
  end

  def destroy
    @plane = Plane.find_by(id: params[:id])
    @plane.destroy
    render json: {message: "plane deleted!"}
  end
end
