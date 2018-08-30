class Api::V1::PlaylistsController < ApplicationController
  before_action :set_playlist, only: [:show,:update,:destroy]
  # skip_before_filter :verify_authenticity_token, :only => [:update]


  def index
    render json: Playlist.all
  end

  def create
    playlist = Playlist.create(playlist_params)
    render json: playlist
  end

  def show

    render json: @playlist
  end

  def destroy
    
    playlistId = @playlist.id
    @playlist.destroy
    render json: {message:"Zap! Note deleted", playlistId:playlistId}
  end

  private

  def set_playlist
    @playlist = Playlist.find(params[:id])
  end

  def playlist_params
    params.permit(:name)
  end


end
