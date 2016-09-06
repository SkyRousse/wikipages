class ListingsController < ApplicationController
  def new
    @category = Category.find(params[:category_id])
    @listing = @category.listings.new
  end

  def create
    @category = Category.find(params[:category_id])
    @listing = @category.listings.new(listing_params)
    if @listing.save
      redirect_to category_path(@listing.category)
    else
      render :new
    end
  end

  def edit
    @category = Category.find(params[:category_id])
    @listing = @category.listings.find(params[:id])
    render :edit
  end

  def update
    @category = Category.find(params[:category_id])
    @listing = @category.listings.find(params[:id])
    if @listing.update(listing_params)
      redirect_to category_path(@listing.category)
    else
      render :edit
    end
  end

  def destroy
    @category = Category.find(params[:category_id])
    @listing = @category.listings.find(params[:id])
    @listing.destroy
    redirect_to category_path(@listing.category)
  end

private
  def listing_params
    params.require(:listing).permit(:name, :address, :phone, :website, :hours)
  end
end
