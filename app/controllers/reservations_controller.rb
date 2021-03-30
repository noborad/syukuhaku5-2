class ReservationsController < ApplicationController
  def new
    # @resevation = Resevation.find(params[:room_id])
    # @room = Room.find(params[:room_id])
    @room = Room.find(params[:id])
    @reservations = Reservation.new
  end

  def create
    # @reservations = current_user.reservations.create(reservation_params)
    # @room = Room.find(params[:id])
    # @reservation.cost = (params[:finish] - params[:start]) * @room.cost * @reservation.person
    # redirect_to root_path notice:"予約が完了しました"
    # @reservations = Reservation.new(reservation_params)
    @reservations = Reservation.new(reservation_params)
    if @reservations.save
      redirect_to "/"
    end
  end

  def update
    @reservations = Reservation.new
    if @reservations.save
      redirect_to "/"
    end
  end

  def index
    @reservations = Reservation.all
  end


  private

  def reservation_params
    params.permit(:start, :finish, :person, :cost, :room_id, :user_id)
  end


end
