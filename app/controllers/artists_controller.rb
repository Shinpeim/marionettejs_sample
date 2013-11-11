class ArtistsController < ApplicationController
  def index
    artists = Artist.all
    render :json => artists.to_json
  end
end