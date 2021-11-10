class BreedsController < ApplicationController
  def index
    @pet = Pet.find_by_id(params[:pet_id])
    @breeds = @pet.breeds
  end
end
