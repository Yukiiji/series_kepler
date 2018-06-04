class ViewsController < ApplicationController
  before_action :set_episode, only: [:create]


  def create

    # if allowed_params != ''
    #   @views = View.new
    #   @views.user = current_user
    #   @views.episode = @episode
    #
    #   if @views.valid?
    #     @views.save!
    #     redirect_to episode_path(@episode)
    #   end
    # else
    #   if View.find(params[:episode_id])?
    #     i = View.find(params[:episode_id])
    #     i.destroy
    #     redirect_to episode_path(@episode)
    #   else
    #     redirect_to episode_path(@episode)
    #   end
    # end

    #Cette section ne marche pas, l'idée etait de vérifier si la checkbox était cochée, et si c'est le cs on entre l'episode vu ans la base, sinon on cherche si il existe deja dedans et si c'est le cas on le supprime (il devient non vu par l'utilisateur)

  end

  private

  def allowed_params
    params.require(:view).permit(:episode_id)
  end

  def set_episode
    @episode = Episode.find(params[:episode_id])
  end

end
