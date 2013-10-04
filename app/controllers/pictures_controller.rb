 class PicturesController < ApplicationController

 	

 	def create
 		@album = Album.where(:id => params[:album_id]).first
		@picture = @album.pictures.new(params[:picture])
		if @picture.save
			redirect_to album_path(@album)
		end
	end
	
	
 end

