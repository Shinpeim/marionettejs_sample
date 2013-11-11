class ArtistsController < ApplicationController
  def index
    artists = Artist.all.includes!(:records)
    render :json => artists.to_json(:include => :records)
  end
end