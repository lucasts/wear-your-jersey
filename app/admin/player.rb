ActiveAdmin.register Player, { :sort_order => :position_asc } do

  controller do
    def permitted_params
      params.permit player: [:team_id, :role_id, :first_name, :last_name, :nickname,
                             :player_image, :number, :birth, :hometown, :bio]
    end
  end

  filter :first_name
  filter :nickname
  filter :team
  filter :role

  sortable

  index do
    sortable_handle_column
    selectable_column
    column :first_name
    column :nickname
    column :role
    column :team
    actions
  end

  #TODO show

  form do |f|
    f.inputs do
      f.input :first_name
      f.input :last_name
      f.input :nickname
      f.input :player_image, :required => false
      f.input :birth, :as => :datepicker
    end
    f.inputs do
      f.input :team_id,
        :as         => :select,
        :collection => TeamDecorator.decorate_collection(Team.all).map { |team| team.full_name_and_id },
        :input_html => {
          "data-get-positions-input" => "",
          "data-get-positions-url"   => "/admin/teams/:id/roles_of_modality"
        }
      f.input :role_id,
        :as         => :select,
        :collection => [],
        :input_html => { "data-get-positions-output" => "" }
      f.input :number
    end
    f.actions
  end
end
