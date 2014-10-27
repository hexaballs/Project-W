class AlbumsController < ApplicationController

  def index
    # will have template
    @albums = Album.all
  end


  def show
    # will have template
    @album = Album.find_by(id: params[:id])
    @shuffled_album = Album.all.shuffle


    @album_items = Album.find_by(id: params[:id]).items

    @tops = @album_items.where(item_class:"Tops")
    @bottoms = @album_items.where(item_class:"Bottoms")
    @doodads = @album_items.where(item_class:"Doodads")
  end


  def new # display the form for creating new record
    # will have template
    @album = Album.new
    3.times { @album.items.build }
  end


  def create # for saving new records
    # will save and redirect
    @album = Album.new(allowed_params_album)

    if @album.save
      flash[:notice] = "Successfully created album."
      redirect_to album_path id: @album.id
    else
      render :action => 'new'
    end
  end

  def edit # display form for existing record
    # will have template
    @album = Album.find(params[:id])
  end

  def update # for saving changes
    # will save and redirect
    @album = Album.find(params[:id])
    if @album.update_attributes(allowed_params_album)
      redirect_to @album
    else
      render 'new'
    end
  end

  def destroy
    # will destroy and redirect
    @album = Album.find(params[:id])
    @album.destroy
    redirect_to albums_path
  end

  private
    def allowed_params_album
      params.require(:album).permit(:look_type, :look_title, :look_desc, :img_url, :link_url, :link_name, items_attributes: [:name, :brand, :us_price, :item_desc, :item_type, :defining_color, :defining_texture, :img_url, :link_url, :item_class, :album_id])
      #params.require(:album).permit!
    end
end




