class TrainingsController < ApplicationController
  before_action :authenticate_user!, except: :index
  def index
    @trainings = Training.all
  end

  def show
    @booking = Booking.new
    @training = Training.find(params[:id])
  end

  def new
    @training = Training.new
    @groups = Group.all
  end

  def create
    @training = Training.new(training_params)
    @groups = Group.all
    if @training.save && @training.recurring == true
      Training.create!(name: @training.name, start_time: (@training.start_time + 7.days), end_time: (@training.end_time + 7.days), group_id: @training.group_id, sex: @training.sex, recurring: false)
      Training.create!(name: @training.name, start_time: (@training.start_time + 14.days), end_time: (@training.end_time + 14.days), group_id: @training.group_id, recurring: false, sex: @training.sex)
      Training.create!(name: @training.name, start_time: (@training.start_time + 21.days), end_time: (@training.end_time + 21.days), group_id: @training.group_id, recurring: false, sex: @training.sex)
      Training.create!(name: @training.name, start_time: (@training.start_time + 28.days), end_time: (@training.end_time + 28.days), group_id: @training.group_id, recurring: false, sex: @training.sex)
      redirect_to trainings_path
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

  def training_params
    params.require(:training).permit(:name, :start_time, :end_time, :sex, :photo, :group_id, :recurring)
  end
end
