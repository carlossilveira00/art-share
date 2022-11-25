class PagesController < ApplicationController
  def home
    @items = Item.all.first(3)
  end

  def profile
    @user = current_user
    @items = Item.where(user_id: @user.id)
  end
end
