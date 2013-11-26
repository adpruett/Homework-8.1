class PetsController < ApplicationController
  def index
    @pet = Pet.all
  end

  def new
    @pet = Pet.new
  end

  def edit
    @pet = Pet.find(params[:id])
  end

    def create
    @pet = Pet.new(pet_params)

    if @pet.save
      redirect_to pets_url
    else
      render 'new'
    end
  end

  def update
    @pet = Pet.find(params[:id])

    if @pet.update(pet_params)
      redirect_to pets_url
    else
      render 'new'
    end
  end

  def destroy
    @pet = Pet.find(params[:id])

    @pet.destroy

    redirect_to pets_url
  end

  private
  def pet_params
    params.require(:pet).permit(:name, :color)
  end
end
