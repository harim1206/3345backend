class Api::V1::TracksController < ApplicationController
  before_action :set_track, only: [:show]

  def index

    render json: Track.all
  end

  def create
    track = Track.create(track_params)
    render json: track
  end

  def show
    render json: @track
  end

  private

  # def todo_params
  #   # whitelist params
  #   params.permit(:title, :created_by)
  # end
  def track_params
    params.permit(:title, :artist, :release, :url, :description, :duration, :label, :catno, :playlist_id, :resource_url, :imgurl)
  end

  def set_track
    @track = Track.find(params[:id])
  end

end
