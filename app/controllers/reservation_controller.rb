class ReservationController < ApplicationController
  def index
    @reservation = reservation_data.first
  end

  def reserve
    @data = reservation_data.first
    @user = User.new(user_params)
    @booking = Booking.new(booking_params)

    if @data.has_key?("reservations")
      @user.first_name = @data["reservation"]["guest_first_name"]
      @user.last_name = @data["reservation"]["guest_last_name"]
      @user.email = @data["reservation"]["guest_email"]

      @booking.start_date = @data["reservation"]["start_date"]
      @booking.end_date = @data["reservation"]["end_date"]
      @booking.nights = @data["reservation"]["nights"]
      @booking.guests = @data["reservation"]["number_of_guests"]
      @booking.adults = @data["reservation"]["guest_details"]["number_of_adults"]
      @booking.children = @data["reservation"]["guest_details"]["number_of_children"]
      @booking.infants = @data["reservation"]["guest_details"]["number_of_infants"]
      @booking.status_type = @data["reservation"]["status_type"]
      @booking.currency = @data["reservation"]["host_currency"]
      @booking.payout_price = @data["reservation"]["expected_payout_amount"]
      @booking.security_price = @data["reservation"]["listing_security_price_accurate"]
      @booking.total_price = @data["reservation"]["total_paid_amount_accurate"]
    else
      # @user.first_name = @data["guest"]["first_name"]
      # @user.last_name = @data["guest"]["last_name"]
      # @user.email = @data["guest"]["email"]

      # @booking.start_date = @data["start_date"]
      # @booking.end_date = @data["end_date"]
      # @booking.nights = @data["nights"]
      # @booking.guests = @data["guests"]
      # @booking.adults = @data["adults"]
      # @booking.children = @data["children"]
      # @booking.infants = @data["infants"]
      # @booking.status_type = @data["status"]
      # @booking.currency = @data["currency"]
      # @booking.payout_price = @data["payout_price"]
      # @booking.security_price = @data["security_price"]
      # @booking.total_price = @data["total_price"]

      @user.first_name = @data["first_name"]
      @user.last_name = @data["last_name"]
      @user.email = @data["email"]

      @booking.start_date = "2020-03-12"
      @booking.end_date = "2020-03-16"
      @booking.nights = 4
      @booking.guests = 4
      @booking.adults = 2
      @booking.children = 2
      @booking.infants = 0
      @booking.status_type = "Booked"
      @booking.currency = "AUD"
      @booking.payout_price = 3800.00
      @booking.security_price = 500.00
      @booking.total_price = 4500.00
    end

    book(@user, @booking)
  end

  def book(user, booking)
    @user = User.where(first_name: user.first_name, last_name: user.first_name).first

    if @user == nil
      user.save
    else
      user = @user
    end

    booking.user_id = user.id

    respond_to do |format|
        if booking.save
          format.html { redirect_to :bookings_index, notice: "Reservation was successfully created." }
        end
      end
  end

  private

    def reservation_data
      Hotel::Client.reservation[:data]
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.fetch(:user, {})
    end

    def contactnumber_params
      params.fetch(:contact_numer, {})
    end

    def booking_params
      params.fetch(:booking, {})
    end
end
