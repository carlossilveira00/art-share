class ReservationsController < ApplicationController
  def new
    @reservation = Reservation.new()
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.status = "pending"
    authorize @reservation

    if @reservation.save
      redirect_to items_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit( :item_id, :user_id, :pickup_date, :drop_date, :total_value)
  end
end
