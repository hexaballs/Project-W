class WelcomeController < ApplicationController
  def index
    @album = Album.all
    @shuffled_album = Album.all.shuffle

    @menu_items = Album.all.pluck(:look_type).uniq
  end
end
