class TrainingsController < ApplicationController
  def index
    @trainings = Training.all
  end

  def show
    @booking = Booking.new
    @training = Training.find(params[:id])
  end

  def new
    @training = Training.new
  end

  def create
    @training = Training.new(training_params)
    if @training.save!
      redirect_to training_path(@training)
    else
      render :new
    end
  end

  def edit
    @training = Training.find(params[:id])
  end

  def update
    @training = Training.find(params[:id])
    if @training.update(training_params)
      redirect_to trainings_path
    else
      render :edit
    end
  end

  def destroy
    @training = Training.find(params[:id])
    @training.destroy
  end

  private

  def training_params
    params.require(:training).permit(:name, :start_date, :end_date, :group, :sex)
  end
end
