class ReviewsController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  def create
    review = Review.new(review_params)
    review.restaurant_id = params[:restaurant_id]

    if review.save
      redirect_to "/restaurants"
    else
      render :new
    end
  end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  private

  def review_params
    # this method will return a hash like this:
    # { title: "whatever title", author: "some person", body: "blah blah blah" }
    params.require(:review).permit(:rating,:body,:restaurant_id)

  end

end
