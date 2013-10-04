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

	def show
		@album = Album.where(:id => params[:id]).first
		@picture = Picture.new
	end

end
