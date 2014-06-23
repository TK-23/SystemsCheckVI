class HomeController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
    @latest_restaurants = Restaurant.all.order("created_at asc").limit(10)
  end

end
