class SightingsController < ApplicationController
  def new
  end

  def create
  end

  def get
  end

  def update
  end

  def delete
  end

  def index
    @sightings = Sighting.between(params[:sightings])
    render('sightings/index.html.erb')
  end

  def by_date
    render "sightings/by_date.html.erb"
  end
end
