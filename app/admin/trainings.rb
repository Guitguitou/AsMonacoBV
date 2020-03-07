ActiveAdmin.register Training do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name, :start_time, :end_date, :group_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :start_time, :end_date, :group_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  form partial: 'form'
  controller do
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
  end
end
