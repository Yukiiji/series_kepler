class ViewsController < ApplicationController
  before_action :set_episode, only: [:create]


  def create

    if allowed_params == true
      @views = View.new
      @views.user = current_user
      @views.episode = params[:episode_id]

      if @views.valid?
        @views.save!
        redirect_to episode_path(@episode)
      end
    else
      if View.find(params[:episode_id]) != nil
        destroy
      else
        redirect_to episode_path(@episode)
      end
    end
  end

  def destroy
    i = View.find(params[:episode_id])
    i.destroy
    redirect_to episode_path(@episode)
  end

  private

  def allowed_params
    params.require(:view).permit(:episode_id)
  end

  def set_episode
    @episode = Episode.find(params[:episode_id])
  end

end
