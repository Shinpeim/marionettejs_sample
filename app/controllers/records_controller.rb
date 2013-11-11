class RecordsController < ApplicationController
  def index
    records = Record.where(:artist_id => params[:artist_id])
    render :json => records
  end
end