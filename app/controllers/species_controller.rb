class SpeciesController < ApplicationController
  def index
    @species = Species.all
    render('species/index.html.erb')
  end

  def show
    def show
      @species = Species.find(params[:id])
      render('species/show.html.erb')
    end
  end

  def new
    @species = Species.new
    render('species/new.html.erb')
  end

  def create
    # @species = Species.new(params[:species])
    @species = Species.new(species_params)

    if @species.save
      render ('species/success.html.erb')
    else
      render ('species/new.html.erb')
    end
  end

  def get
  end

  def update
  end

  def delete
  end

  private

  def species_params
    params.require(:species).permit(:name)
  end
end
