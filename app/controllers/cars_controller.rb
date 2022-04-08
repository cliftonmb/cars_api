class CarsController < ApplicationController

  def index
    cars = Car.all
    render json: cars
  end

  def create
    car = Car.new(
      make: params[:input_make],
      model: params[:input_model],
      year: params[:input_year],
      name: params[:input_name],
      image_url: params[:input_image_url]
    )
    car.save
    render json: car
  end

  def show
    car = Car.find_by(id: params[:id])
    render json: car
  end

  def update
    car = Car.find_by(id: params[:id])
    car.make = params[:input_make] || car.make
    car.model = params[:input_model] || car.model
    car.year = params[:input_year] || car.year
    car.name = params[:input_name] || car.name
    car.image_url = params[:input_image_url] || car.image_url

    car.save
    render json: car
  end

  def destroy
    car = Car.find_by(id: params[:id])
    car.delete
    render json: {message: "Car deleted"}
  end

end
