class Api::V1::ReleasesController < ApplicationController
    before_action :set_release, only: [:show,:update,:destroy]

  def index
    render json: Release.all
  end

  def create
    release = Release.create(release_params)
    render json: release
  end

  private

  def set_release
    @release = Release.find(params[:id])
  end

  def release_params
    params.permit(:resource_url, :playlist_id)
  end

end
