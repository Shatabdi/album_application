class AlbumsController < ApplicationController

	def new
		
		@album = Album.new
	end

	def create
		@album = current_user.albums.new(params[:album])
		if @album.save
			redirect_to album_path(@album)
		end
	end

	def fb_friends
		@fb_friends = current_user.get_fb_friend_list
		@fb_friends = @fb_friends.sort_by { |fb_frnd| fb_frnd.raw_attributes['name'] }
		render :layout => false
	end

	def show
		@album = Album.where(:id => params[:id]).first
		@picture = Picture.new
	end

	
end
