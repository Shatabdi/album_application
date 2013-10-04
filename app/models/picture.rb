class Picture < ActiveRecord::Base
  attr_accessible :album_id, :photo
  belongs_to :album
  has_attached_file :photo
end
