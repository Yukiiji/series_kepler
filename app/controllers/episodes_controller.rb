class EpisodesController < ApplicationController


  def show
    @episode = Episode.find(params[:id])
    @season = Season.find(@episode.season_id)
    @serie_img = Serie.find(@season.serie_id)
    @reviews = Review.where({:episode_id => @episode})

    @reviews.each do |r|
      r.user = User.find(r.user_id)
    end

    @view = View.new
  end

end
