ActiveAdmin.register Training do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name, :start_date, :end_date, :group
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :start_date, :end_date, :group]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
