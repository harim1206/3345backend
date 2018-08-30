class PlaylistSerializer < ActiveModel::Serializer
  attributes :id, :name, :tracks
  has_many :tracks

end
