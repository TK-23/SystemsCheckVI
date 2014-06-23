class RestaurantsController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
    @restaurants = Restaurant.all.order("name")
  end

  def show
    @r = Restaurant.find(params[:id])
    @reviews = @r.reviews
  end

  def create
    Restaurant.create(restaurant_params)

    redirect_to restaurants_path
  end

  def new
    @restaurant = Restaurant.new
  end

  private

  def restaurant_params
    # this method will return a hash like this:
    # { title: "whatever title", author: "some person", body: "blah blah blah" }
    params.require(:restaurant).permit(:name,:address,:city, :state, :zipcode,:description, :category)

  end

end
