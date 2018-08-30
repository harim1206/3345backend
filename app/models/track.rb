class Track < ApplicationRecord
  belongs_to :playlist, optional: true


end
