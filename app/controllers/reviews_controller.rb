class ReviewsController < ApplicationController

  def new
    @review = Review.new
  end

  def create
    @episode = Episode.find(params[:episode_id])
    @review = Review.new(allowed_params)
    @review.episode = @episode
    @review.user = current_user

    if @review.valid?
      @review.save!
      redirect_to show_episode_path
    else

    end
  end


  private

  def allowed_params
    params.require(:review).permit(:rating, :comment)
  end

end
