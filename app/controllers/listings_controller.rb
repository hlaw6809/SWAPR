class ListingsController < ApplicationController

  def index
    @listings = Listing.order('date_created DESC')
    puts @listings
  end

  def listing
    @listing = Listing.where(:listing_id => params[:id]).first
    @owner = User.where(:user_id => @listing.owner_id).first
  end

  def request_listing

  end

  def new
    @listing = Listing.new
  end

  def create
    @user = User.first
    Listing.create(listing_params) do |listing|
      listing.owner_id = @user.user_id
      listing.date_created = Date.today

    end
    redirect_to listings_path
  end

  def search
    @query = "%#{params[:query]}%"

    @listings = Listing.where("title LIKE ?", @query)
  end

  def show
    redirect_to listings_path
  end

  private

  def listing_params
    params.require(:listing).permit(:title, :description, :borrow_length, :category, :post_image)
  end
end
