class SeasonsController < ApplicationController


  def show
    @episode = Episode.where({:season_id => params[:id]}).order(:number)
    @season = Season.find(params[:id])
  end

  private

end
