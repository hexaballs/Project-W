class AlbumsController < ApplicationController
  def show
    @album = Album.find_by(id: params[:id])
    @shuffled_album = Album.all.shuffle


    @album_items = Album.find_by(id: params[:id]).items

    @tops = @album_items.where(item_class:"Tops")
    @bottoms = @album_items.where(item_class:"Bottoms")
    @doodads = @album_items.where(item_class:"Doodads")


  end
end
