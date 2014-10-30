class WelcomeController < ApplicationController
  def index
    @album = Album.all
    @shuffled_album = Album.all.shuffle

    @menu_items = Category.all.pluck(:name).uniq
  end
end
