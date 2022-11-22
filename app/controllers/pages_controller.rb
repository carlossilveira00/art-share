class PagesController < ApplicationController
  def home
    @items = Item.all.first(3)
  end

  def profile
    @user = current_user
  end
end
