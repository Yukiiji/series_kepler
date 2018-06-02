class EpisodesController < ApplicationController
before_action :authenticate_user!

  def show
    @episode = Episode.find(params[:id])
    @reviews = Review.all
    @review = Review.new

    @reviews.each do |r|
      r.user = Users.find(r.user_id)
    end
  end

end
