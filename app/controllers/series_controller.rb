class SeriesController < ApplicationController

  def index
    @series = Serie.all

    @highlights = Serie.limit(2)
  end
end
