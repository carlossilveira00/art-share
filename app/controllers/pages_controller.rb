class PagesController < ApplicationController
  def home
    @items = Item.all.first(3)
  end
end
