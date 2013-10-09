class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, 
  :remember_me, :provider, :uid, :name, :city
  # attr_accessible :title, :body

  has_one :facebook_access_token
  has_many :albums
  has_many :pictures, :through => :album

  devise :omniauthable, :omniauth_providers => [:facebook]

  def get_fb_friend_list
   friend_list ||= FbGraph::User.me(self.facebook_access_token.access_token).friends
  end

end







