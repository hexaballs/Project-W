class AlbumsController < ApplicationController
  before_action :set_album, only: [:show, :edit, :update, :destroy]

  # GET /albums
  # GET /albums.json
  def index
    @albums = Album.all
  end

  # GET /albums/1
  # GET /albums/1.json
  def show
    # will have template
    @album = Album.find_by(id: params[:id])
    @category = Category.find_by(id: @album.category_id).name
    @shuffled_album = Album.all.where(category_id: @album.category_id).shuffle


    @album_items = Album.find_by(id: params[:id]).items

    @tops = @album_items.where(item_class:"Tops")
    @bottoms = @album_items.where(item_class:"Bottoms")
    @doodads = @album_items.where(item_class:"Doodads")
  end

  # GET /albums/new
  def new
    @album = Album.new
    1.times { @album.items.build }
  end

  # GET /albums/1/edit
  def edit
    @album = Album.find(params[:id])
  end

  # POST /albums
  # POST /albums.json
  def create
    @album = Album.new(allowed_params_album)

    respond_to do |format|
      if @album.save
        format.html { redirect_to @album, notice: 'Album was successfully created.' }
        format.json { render :show, status: :created, location: @album }
      else
        format.html { render :new }
        format.json { render json: @album.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /albums/1
  # PATCH/PUT /albums/1.json
  def update
    respond_to do |format|
      if @album.update(allowed_params_album)
        format.html { redirect_to @album, notice: 'Album was successfully updated.' }
        format.json { render :show, status: :ok, location: @album }
      else
        format.html { render :edit }
        format.json { render json: @album.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /albums/1
  # DELETE /albums/1.json
  def destroy
    @album.destroy
    respond_to do |format|
      format.html { redirect_to albums_url, notice: 'Album was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions
    def set_album
      @album = Album.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def allowed_params_album
      params.require(:album).permit(:look_type, :look_title, :look_desc, :img_url, :link_url, :link_name, :category_id, items_attributes: [:id, :name, :brand, :us_price, :item_desc, :item_type, :defining_color, :defining_texture, :img_url, :link_url, :item_class, :_destroy])
    end
end




