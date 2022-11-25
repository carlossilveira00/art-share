class PagesController < ApplicationController
  def home
    @items = Item.all.first(3)
  end

  def profile
    @user = current_user
    @items = Item.where(user_id: @user.id)
  end

  def rented
    @reservations = Reservation.where(user_id: current_user.id)
  end
end
