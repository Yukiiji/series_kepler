class ViewsController < ApplicationController
  before_action :set_episode, only: [:create]


  def create
    @view = Review.new(allowed_params)
    @view.episode = Episode.find(params[:episode_id])
    @view.user = current_user

    if @view.valid?
      @view.save!
      redirect_to episode_path(@episode)
    else

    end
  end

  private

  def allowed_params
    params.require(:viewed).permit(:episode_id)
  end

  def set_episode
    @episode = Episode.find(params[:episode_id])
  end

end
