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
    @dose = Dose.new(set_dose_params)
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_doses_path(@cocktail)
    else
      render :new
    end
  end

  def show
    @dose = Dose.find(params[:id])
  end

  def destroy
    @dose = Dose.find(params[:id])
    @cocktail = @dose.cocktail
    @dose.destroy
    redirect_to cocktail_doses_path(@cocktail)
  end

  private

  def set_dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
