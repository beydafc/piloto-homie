class StatesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  def index
    if params[:query].present?
      @states = State.global_search(params[:query])
    else
      @states = State.all
    end

    @markers = @states.geocoded.map do |state|
      {
        lat: restaurant.latitude,
        lng: restaurant.longitude
      }
    end
  end
end
