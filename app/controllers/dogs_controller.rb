class DogsController < ApplicationController
  def index
    @dogs = Dog.all
    render json: @dogs
  end

  def show
    @dog = Dog.find(params[:id])
    render json: @dog, :include => [:appointments, :dietary_restrictions, :medications, :vaccinations]
  end

  def create
    @dog = Dog.new(dog_params)
    @dog.save!
    render json: @dog
  end

  def dog_params
    params.require(:dog).permit(
        :name,
        :breed,
        :age,
        :weight,
        :sex,
        :is_spayed_or_neutered
    )
  end
end
