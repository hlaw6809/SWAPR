class ListingsController < ApplicationController

  def index
    @listings = Listing.all
  end

  def new
    @listing = Listing.new
  end

  def search
    @search = params[:param]
  end

  def show
    redirect_to listings_path
  end
end
