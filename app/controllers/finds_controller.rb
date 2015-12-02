class FindsController < ApplicationController

  def new
    @find = Find.new
    @categories = Product.uniq.pluck(:category)
  end

  def show
    @find = Find.find(params[:id])
  end

  def create
    @find = Find.new(find_params)
    if @find.save
      redirect_to @find
    else
      render 'new'
    end
  end

  private

  def find_params
    params.require(:find).permit(:key, :cat)
  end

end
