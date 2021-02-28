class DosesController < ApplicationController

  def index
  end

  def show
  end

  def new
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new(dose_params)
    # @ingredient = Ingredient.find(params[:ingredient_id])
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render 'cocktails/show'
    end
  end

  def update
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to cocktail_url
  end

private

  def dose_params
        params.require(:dose).permit(:description, :ingredient_id)
  end
end
