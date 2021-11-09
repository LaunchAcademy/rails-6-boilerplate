class Api::V1::BreedsController < ApplicationController
  def index
    @breeds = Breed.all
  end
end
