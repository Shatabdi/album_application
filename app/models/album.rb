class Album < ActiveRecord::Base
   attr_accessible :user_id, :name
   has_many :pictures
   belongs_to :user
end
