class ReviewsController < ApplicationController

  before_action :set_episode, only: [:new, :create]

  def new
    @review = @episode.reviews.new
  end

  def create
    @review = Review.new(allowed_params)
    @review.episode = Episode.find(params[:episode_id])
    @review.user = current_user

    if @review.valid?
      @review.save!
      redirect_to episode_path(@episode)
    else

    end
  end


  private

  def allowed_params
    params.require(:review).permit(:rating, :comment)
  end

  def set_episode
    @episode = Episode.find(params[:episode_id])
  end

end
