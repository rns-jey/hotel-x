class ReservationsController < ApplicationController

  # GET /reservations or /reservations.json
  def index
    @reservation = Hotel::Client.reservation[:data]
  end

  # POST /reservations or /reservations.json
  def book
    # @reservation = Reservation.new(reservation_params)

    p reservation_params

    respond_to do |format|
      format.html { redirect_to :bookings_index, notice: "Reservation was successfully created." }
    end

    # respond_to do |format|
    #   if @reservation.save
    #     format.html { redirect_to reservation_url(@reservation), notice: "Reservation was successfully created." }
    #     format.json { render :show, status: :created, location: @reservation }
    #   else
    #     format.html { render :new, status: :unprocessable_entity }
    #     format.json { render json: @reservation.errors, status: :unprocessable_entity }
    #   end
    # end
  end


  private

    # Only allow a list of trusted parameters through.
    def reservation_params
      params.fetch(:reservation, {})
    end
end
