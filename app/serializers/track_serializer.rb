class TrackSerializer < ActiveModel::Serializer
  attributes :id, :title, :artist, :release, :url, :description, :duration, :label, :catno, :resource_url, :imgurl
  belongs_to :playlist
end
