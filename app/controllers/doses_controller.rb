class DosesController < ApplicationController
  def index
    @cocktail = Cocktail.find(params[:cocktail_id])
    @doses = Dose.all
  end

  def new
    @ingredients = Ingredient.all
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    # Ingredient.where(name: params[:dose][:ingredient_id])
    @dose = Dose.new(set_dose_params)
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_doses_path(@cocktail)
    else
      render :new
    end
  end

  private

  def set_dose_params
    params.require(:dose).permit(:description, :ingredient_id, :cocktail_id)
  end
end
