class EpisodesController < ApplicationController
  before_action :authenticate_user!


  def show
    @episode = Episode.find(params[:id])
    @reviews = Review.where({:episode_id => @episode})

    @reviews.each do |r|
      r.user = User.find(r.user_id)
    end
  end

end
