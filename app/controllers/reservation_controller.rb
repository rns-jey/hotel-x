class ReservationController < ApplicationController
  def index
    @reservation = reservation_data.first
  end

  def book
    # @user = User.new(booking_params)
    # @booking = Booking.new(booking_params)

    # p @booking

    # if reservation_data.first.has_key?("reservations")
    #   p "Format 1"
    # else
    #   @booking.start_date = reservation_data.first[""]
    # end

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

    def reservation_data
      Hotel::Client.reservation[:data]
    end

    # Only allow a list of trusted parameters through.
    def booking_params
      params.fetch(:booking, {})
    end
end
