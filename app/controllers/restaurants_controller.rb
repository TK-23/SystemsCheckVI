class RestaurantsController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
    @restaurants = Restaurant.all.order("name")
  end

  def create

  end

  def new
  end

end
