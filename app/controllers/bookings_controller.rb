class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def new
    @training = Training.find(params[:training_id])
    @booking = Booking.new
  end

  def create
    @training = Training.find(params[:training_id])
    # @date = params[:booking][:date]
    @booking = Booking.new(training: @training, user: current_user)
    if @booking.save
      redirect_to training_path(@training)
    else
      render :new
    end
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.status = params[:status]
    @booking.save
    redirect_to trainings_path
  end

  def destroy

    @booking = Booking.find(params[:id])
    @training = Training.find(params[:training_id])
    if @booking.destroy
      redirect_to training_path(@training)
    else
      render :show
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:status, :training_id)
  end
end
